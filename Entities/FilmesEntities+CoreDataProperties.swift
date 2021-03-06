//
//  FilmesEntities+CoreDataProperties.swift
//  ProjetoIntegrador
//
//  Created by Juliane Lopes Moreira Rodrigues on 28/06/22.
//
//

import Foundation
import CoreData


extension FilmesEntities {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FilmesEntities> {
        return NSFetchRequest<FilmesEntities>(entityName: "FilmesEntities")
    }

    @NSManaged public var title: String?
    @NSManaged public var release_date: String?
    @NSManaged public var overview: String?
    @NSManaged public var cover_url: String?
    @NSManaged public var directed_by: String?
    @NSManaged public var phase: Int16
    @NSManaged public var saga: String?
    @NSManaged public var post_credit_scenes: Int16
    @NSManaged public var parenteUsuario: UsuarioEntities?
    
    convenience init(filme: Filme, context: NSManagedObjectContext) {
        self.init(context: context)
        self.title = filme.title
        self.release_date = filme.release_date
        self.overview = filme.overview
        self.cover_url = filme.cover_url
        self.directed_by = filme.directed_by
        self.phase = Int16(filme.phase ?? 0)
        self.saga = filme.saga
        self.post_credit_scenes = Int16(filme.post_credit_scenes ?? 0)
        
        
    }
    public var wrappedTitle: String{
        title ?? ""
    }

    
}

extension FilmesEntities : Identifiable {

}


