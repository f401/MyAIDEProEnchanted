.class Lcom/sun/tools/javac/code/Scope$ImportScope$ImportEntry;
.super Lcom/sun/tools/javac/code/Scope$Entry;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope$ImportScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImportEntry"
.end annotation


# instance fields
.field private origin:Lcom/sun/tools/javac/code/Scope;


# direct methods
.method constructor <init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Scope;)V
    .registers 6

    .line 522
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sun/tools/javac/code/Scope$Entry;-><init>(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope;)V

    .line 523
    iput-object p5, p0, Lcom/sun/tools/javac/code/Scope$ImportScope$ImportEntry;->origin:Lcom/sun/tools/javac/code/Scope;

    .line 524
    return-void
.end method


# virtual methods
.method public getOrigin()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$ImportScope$ImportEntry;->origin:Lcom/sun/tools/javac/code/Scope;

    return-object v0
.end method
