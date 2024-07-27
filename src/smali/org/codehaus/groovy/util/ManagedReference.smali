.class public Lorg/codehaus/groovy/util/ManagedReference;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/codehaus/groovy/util/Finalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/codehaus/groovy/util/Finalizable;"
    }
.end annotation


# static fields
.field private static final j6:Lorg/codehaus/groovy/util/ReferenceManager;


# instance fields
.field private final DW:Lorg/codehaus/groovy/util/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/Reference",
            "<TT;",
            "Lorg/codehaus/groovy/util/ManagedReference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final FH:Lorg/codehaus/groovy/util/ReferenceManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/codehaus/groovy/util/ManagedReference$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/codehaus/groovy/util/ManagedReference$1;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Lorg/codehaus/groovy/util/ManagedReference;->j6:Lorg/codehaus/groovy/util/ReferenceManager;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/util/ReferenceBundle;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/codehaus/groovy/util/ReferenceBundle;->FH()Lorg/codehaus/groovy/util/ReferenceType;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codehaus/groovy/util/ReferenceBundle;->j6()Lorg/codehaus/groovy/util/ReferenceManager;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lorg/codehaus/groovy/util/ManagedReference;-><init>(Lorg/codehaus/groovy/util/ReferenceType;Lorg/codehaus/groovy/util/ReferenceManager;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/util/ReferenceType;Lorg/codehaus/groovy/util/ReferenceManager;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/groovy/util/ReferenceType;",
            "Lorg/codehaus/groovy/util/ReferenceManager;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    sget-object p2, Lorg/codehaus/groovy/util/ManagedReference;->j6:Lorg/codehaus/groovy/util/ReferenceManager;

    :cond_0
    iput-object p2, p0, Lorg/codehaus/groovy/util/ManagedReference;->FH:Lorg/codehaus/groovy/util/ReferenceManager;

    invoke-virtual {p2}, Lorg/codehaus/groovy/util/ReferenceManager;->j6()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p1, p3, p0, v0}, Lorg/codehaus/groovy/util/ReferenceType;->j6(Ljava/lang/Object;Lorg/codehaus/groovy/util/Finalizable;Ljava/lang/ref/ReferenceQueue;)Lorg/codehaus/groovy/util/Reference;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/groovy/util/ManagedReference;->DW:Lorg/codehaus/groovy/util/Reference;

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedReference;->DW:Lorg/codehaus/groovy/util/Reference;

    invoke-virtual {p2, v0}, Lorg/codehaus/groovy/util/ReferenceManager;->j6(Lorg/codehaus/groovy/util/Reference;)V

    return-void
.end method


# virtual methods
.method public DW()V
    .registers 1

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/ManagedReference;->FH()V

    return-void
.end method

.method public final FH()V
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedReference;->DW:Lorg/codehaus/groovy/util/Reference;

    invoke-interface {v0}, Lorg/codehaus/groovy/util/Reference;->clear()V

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedReference;->FH:Lorg/codehaus/groovy/util/ReferenceManager;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ReferenceManager;->DW()V

    return-void
.end method

.method public final Hw()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/util/ManagedReference;->DW:Lorg/codehaus/groovy/util/Reference;

    invoke-interface {v0}, Lorg/codehaus/groovy/util/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
