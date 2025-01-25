.class public abstract Lorg/codehaus/groovy/util/LazyReference;
.super Lorg/codehaus/groovy/util/LockableObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/codehaus/groovy/util/LockableObject;"
    }
.end annotation


# static fields
.field private static final DW:Lorg/codehaus/groovy/util/ManagedReference;

.field private static final FH:Lorg/codehaus/groovy/util/ManagedReference;


# instance fields
.field private Hw:Lorg/codehaus/groovy/util/ManagedReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/codehaus/groovy/util/ManagedReference<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final v5:Lorg/codehaus/groovy/util/ReferenceBundle;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lorg/codehaus/groovy/util/LazyReference$1;

    sget-object v1, Lorg/codehaus/groovy/util/ReferenceType;->Hw:Lorg/codehaus/groovy/util/ReferenceType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/groovy/util/LazyReference$1;-><init>(Lorg/codehaus/groovy/util/ReferenceType;Lorg/codehaus/groovy/util/ReferenceManager;Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/util/LazyReference;->DW:Lorg/codehaus/groovy/util/ManagedReference;

    new-instance v0, Lorg/codehaus/groovy/util/LazyReference$2;

    sget-object v1, Lorg/codehaus/groovy/util/ReferenceType;->Hw:Lorg/codehaus/groovy/util/ReferenceType;

    invoke-direct {v0, v1, v2, v2}, Lorg/codehaus/groovy/util/LazyReference$2;-><init>(Lorg/codehaus/groovy/util/ReferenceType;Lorg/codehaus/groovy/util/ReferenceManager;Ljava/lang/Object;)V

    sput-object v0, Lorg/codehaus/groovy/util/LazyReference;->FH:Lorg/codehaus/groovy/util/ManagedReference;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/groovy/util/ReferenceBundle;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/groovy/util/LockableObject;-><init>()V

    sget-object v0, Lorg/codehaus/groovy/util/LazyReference;->DW:Lorg/codehaus/groovy/util/ManagedReference;

    iput-object v0, p0, Lorg/codehaus/groovy/util/LazyReference;->Hw:Lorg/codehaus/groovy/util/ManagedReference;

    iput-object p1, p0, Lorg/codehaus/groovy/util/LazyReference;->v5:Lorg/codehaus/groovy/util/ReferenceBundle;

    return-void
.end method

.method private j6(Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->j6()V

    :try_start_3
    iget-object v0, p0, Lorg/codehaus/groovy/util/LazyReference;->Hw:Lorg/codehaus/groovy/util/ManagedReference;

    if-nez p1, :cond_13

    sget-object p1, Lorg/codehaus/groovy/util/LazyReference;->DW:Lorg/codehaus/groovy/util/ManagedReference;

    if-eq v0, p1, :cond_13

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2a

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object p1

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LazyReference;->Hw()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1e

    sget-object v0, Lorg/codehaus/groovy/util/LazyReference;->FH:Lorg/codehaus/groovy/util/ManagedReference;

    :goto_1b
    iput-object v0, p0, Lorg/codehaus/groovy/util/LazyReference;->Hw:Lorg/codehaus/groovy/util/ManagedReference;

    goto :goto_26

    :cond_1e
    new-instance v0, Lorg/codehaus/groovy/util/ManagedReference;

    iget-object v1, p0, Lorg/codehaus/groovy/util/LazyReference;->v5:Lorg/codehaus/groovy/util/ReferenceBundle;

    invoke-direct {v0, v1, p1}, Lorg/codehaus/groovy/util/ManagedReference;-><init>(Lorg/codehaus/groovy/util/ReferenceBundle;Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_2a

    goto :goto_1b

    :goto_26
    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    return-object p1

    :catchall_2a
    move-exception p1

    invoke-virtual {p0}, Lorg/codehaus/groovy/util/LockableObject;->DW()V

    goto :goto_30

    :goto_2f
    throw p1

    :goto_30
    goto :goto_2f
.end method


# virtual methods
.method public FH()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/groovy/util/LazyReference;->Hw:Lorg/codehaus/groovy/util/ManagedReference;

    sget-object v1, Lorg/codehaus/groovy/util/LazyReference;->DW:Lorg/codehaus/groovy/util/ManagedReference;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/util/LazyReference;->j6(Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_c
    sget-object v1, Lorg/codehaus/groovy/util/LazyReference;->FH:Lorg/codehaus/groovy/util/ManagedReference;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codehaus/groovy/util/LazyReference;->j6(Z)Ljava/lang/Object;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public abstract Hw()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/codehaus/groovy/util/LazyReference;->Hw:Lorg/codehaus/groovy/util/ManagedReference;

    invoke-virtual {v0}, Lorg/codehaus/groovy/util/ManagedReference;->Hw()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, "<null>"

    return-object v0

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
