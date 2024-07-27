.class public Lcom/sun/tools/javac/code/Scope$DelegatedScope;
.super Lcom/sun/tools/javac/code/Scope;
.source "Scope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/tools/javac/code/Scope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelegatedScope"
.end annotation


# static fields
.field public static final emptyTable:[Lcom/sun/tools/javac/code/Scope$Entry;


# instance fields
.field delegatee:Lcom/sun/tools/javac/code/Scope;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 557
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sun/tools/javac/code/Scope$Entry;

    sput-object v0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;->emptyTable:[Lcom/sun/tools/javac/code/Scope$Entry;

    return-void
.end method

.method public constructor <init>(Lcom/sun/tools/javac/code/Scope;)V
    .registers 5

    .line 560
    iget-object v0, p1, Lcom/sun/tools/javac/code/Scope;->owner:Lcom/sun/tools/javac/code/Symbol;

    sget-object v1, Lcom/sun/tools/javac/code/Scope$DelegatedScope;->emptyTable:[Lcom/sun/tools/javac/code/Scope$Entry;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sun/tools/javac/code/Scope;-><init>(Lcom/sun/tools/javac/code/Scope;Lcom/sun/tools/javac/code/Symbol;[Lcom/sun/tools/javac/code/Scope$Entry;Lcom/sun/tools/javac/code/Scope$1;)V

    .line 561
    iput-object p1, p0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;->delegatee:Lcom/sun/tools/javac/code/Scope;

    .line 562
    return-void
.end method


# virtual methods
.method public dup()Lcom/sun/tools/javac/code/Scope;
    .registers 3

    .line 564
    new-instance v0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;->next:Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Scope$DelegatedScope;-><init>(Lcom/sun/tools/javac/code/Scope;)V

    return-object v0
.end method

.method public dupUnshared()Lcom/sun/tools/javac/code/Scope;
    .registers 3

    .line 567
    new-instance v0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;

    iget-object v1, p0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;->next:Lcom/sun/tools/javac/code/Scope;

    invoke-direct {v0, v1}, Lcom/sun/tools/javac/code/Scope$DelegatedScope;-><init>(Lcom/sun/tools/javac/code/Scope;)V

    return-object v0
.end method

.method public enter(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 2

    .line 574
    return-void
.end method

.method public enter(Lcom/sun/tools/javac/code/Symbol;Lcom/sun/tools/javac/code/Scope;)V
    .registers 3

    .line 577
    return-void
.end method

.method public leave()Lcom/sun/tools/javac/code/Scope;
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;->next:Lcom/sun/tools/javac/code/Scope;

    return-object v0
.end method

.method public lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/sun/tools/javac/code/Scope$DelegatedScope;->delegatee:Lcom/sun/tools/javac/code/Scope;

    invoke-virtual {v0, p1}, Lcom/sun/tools/javac/code/Scope;->lookup(Lcom/sun/tools/javac/util/Name;)Lcom/sun/tools/javac/code/Scope$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/sun/tools/javac/code/Symbol;)V
    .registers 3

    .line 579
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
