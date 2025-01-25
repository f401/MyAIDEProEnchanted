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

    iget-object v0, v0, Labcd/AI$f;->FH:Labcd/AI$f;

    iput-object v0, p1, Labcd/AI$b;->v5:Labcd/AI$f;

    return-void
.end method


# virtual methods
.method j6()Labcd/AI$b;
    .registers 4

    iget-object v0, p0, Labcd/AI$b;->Hw:Labcd/AI$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v2, v0, Labcd/AI$b;->v5:Labcd/AI$f;

    if-nez v2, :cond_f

    iput-object v1, v0, Labcd/AI$b;->FH:[B

    iget-object v0, v0, Labcd/AI$b;->Hw:Labcd/AI$b;

    iput-object v0, p0, Labcd/AI$b;->Hw:Labcd/AI$b;

    :cond_f
    iget-object v0, p0, Labcd/AI$b;->v5:Labcd/AI$f;

    if-eqz v0, :cond_19

    new-instance v0, Labcd/AI$b;

    invoke-direct {v0, p0}, Labcd/AI$b;-><init>(Labcd/AI$b;)V

    return-object v0

    :cond_19
    iget-object v0, p0, Labcd/AI$b;->Hw:Labcd/AI$b;

    if-eqz v0, :cond_22

    new-instance v1, Labcd/AI$b;

    invoke-direct {v1, v0}, Labcd/AI$b;-><init>(Labcd/AI$b;)V

    :cond_22
    return-object v1
.end method
