.class public Lcom/sun/tools/javac/code/Scope$ImportScope;
.super Lcom/sun/tools/javac/code/Scope;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImportScope"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/tools/javac/code/Scope$ImportScope$ImportEntry;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 2

    .line 510
    invoke-direct {p0, p1}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Symbol;)V

    .line 511
    return-void
.end method


# virtual methods
.method makeEntry(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 12

    .line 515
    new-instance v0, Lcom/sun/tools/javac/code/Scope$ImportScope$ImportEntry;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sun/tools/javac/code/Scope$ImportScope$ImportEntry;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V

    return-object v0
.end method
