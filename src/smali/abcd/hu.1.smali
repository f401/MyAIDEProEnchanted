.class public Labcd/hu;
.super Ljava/lang/Object;


# instance fields
.field private j6:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Labcd/hu;->j6:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Labcd/hu;->j6:Z

    return-void
.end method


# virtual methods
.method public final J8()V
    .locals 2

    iget-boolean v0, p0, Labcd/hu;->j6:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Labcd/iu;

    const-string v1, "immutable instance"

    invoke-direct {v0, v1}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final VH()Z
    .locals 1

    iget-boolean v0, p0, Labcd/hu;->j6:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final Ws()V
    .locals 2

    iget-boolean v0, p0, Labcd/hu;->j6:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Labcd/iu;

    const-string v1, "mutable instance"

    invoke-direct {v0, v1}, Labcd/iu;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Zo()Z
    .locals 1

    iget-boolean v0, p0, Labcd/hu;->j6:Z

    return v0
.end method

.method public we()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/hu;->j6:Z

    return-void
.end method
