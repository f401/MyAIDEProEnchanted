.class Labcd/AI$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/AI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field DW:Labcd/yE;

.field FH:[B

.field Hw:Labcd/AI$b;

.field final j6:Labcd/AI$f;

.field v5:Labcd/AI$f;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labcd/AI$b;->j6:Labcd/AI$f;

    return-void
.end method

.method constructor <init>(Labcd/AI$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/AI$b;->Hw:Labcd/AI$b;

    iget-object v0, p1, Labcd/AI$b;->v5:Labcd/AI$f;

    iput-object v0, p0, Labcd/AI$b;->j6:Labcd/AI$f;

    iget-object v0, p0, Labcd/AI$b;->j6:Labcd/AI$f;

    iget-object v0, v0, Labcd/AI$f;->FH:Labcd/AI$f;

    iput-object v0, p1, Labcd/AI$b;->v5:Labcd/AI$f;

    return-void
.end method


# virtual methods
.method j6()Labcd/AI$b;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Labcd/AI$b;->Hw:Labcd/AI$b;

    if-eqz v1, :cond_0

    iget-object v2, v1, Labcd/AI$b;->v5:Labcd/AI$f;

    if-nez v2, :cond_0

    iput-object v0, v1, Labcd/AI$b;->FH:[B

    iget-object v1, v1, Labcd/AI$b;->Hw:Labcd/AI$b;

    iput-object v1, p0, Labcd/AI$b;->Hw:Labcd/AI$b;

    :cond_0
    iget-object v1, p0, Labcd/AI$b;->v5:Labcd/AI$f;

    if-eqz v1, :cond_2

    new-instance v0, Labcd/AI$b;

    invoke-direct {v0, p0}, Labcd/AI$b;-><init>(Labcd/AI$b;)V

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Labcd/AI$b;->Hw:Labcd/AI$b;

    if-eqz v1, :cond_1

    new-instance v0, Labcd/AI$b;

    invoke-direct {v0, v1}, Labcd/AI$b;-><init>(Labcd/AI$b;)V

    goto :goto_0
.end method
