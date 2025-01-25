.class public Lcom/jcraft/jsch/IdentityRepository$Wrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/IdentityRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrapper"
.end annotation


# instance fields
.field private DW:Ljava/util/Vector;

.field private FH:Z

.field private j6:Lcom/jcraft/jsch/IdentityRepository;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/IdentityRepository;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    return-void
.end method

.method constructor <init>(Lcom/jcraft/jsch/IdentityRepository;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->FH:Z

    iput-object p1, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6:Lcom/jcraft/jsch/IdentityRepository;

    iput-boolean p2, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->FH:Z

    return-void
.end method


# virtual methods
.method DW()V
    .registers 5

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_f
    array-length v2, v0

    if-lt v1, v2, :cond_13

    goto :goto_22

    :cond_13
    aget-object v2, v0, v1

    check-cast v2, Lcom/jcraft/jsch/Identity;

    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6(Lcom/jcraft/jsch/Identity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    :goto_22
    return-void
.end method

.method public DW([B)Z
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->DW([B)Z

    move-result p1

    return p1
.end method

.method public j6()Ljava/util/Vector;
    .registers 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_26

    iget-object v2, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v2}, Lcom/jcraft/jsch/IdentityRepository;->j6()Ljava/util/Vector;

    move-result-object v3

    :goto_15
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_1c

    return-object v0

    :cond_1c
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_26
    iget-object v3, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Identity;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method j6(Lcom/jcraft/jsch/Identity;)V
    .registers 3

    iget-boolean v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->FH:Z

    if-nez v0, :cond_20

    invoke-interface {p1}, Lcom/jcraft/jsch/Identity;->DW()Z

    move-result v0

    if-nez v0, :cond_20

    instance-of v0, p1, Lcom/jcraft/jsch/IdentityFile;

    if-eqz v0, :cond_20

    :try_start_e
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6:Lcom/jcraft/jsch/IdentityRepository;

    check-cast p1, Lcom/jcraft/jsch/IdentityFile;

    invoke-virtual {p1}, Lcom/jcraft/jsch/IdentityFile;->Hw()Lcom/jcraft/jsch/KeyPair;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyPair;->DW()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->j6([B)Z
    :try_end_1d
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_e .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception p1

    goto :goto_25

    :cond_20
    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_25
    return-void
.end method

.method public j6([B)Z
    .registers 3

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0, p1}, Lcom/jcraft/jsch/IdentityRepository;->j6([B)Z

    move-result p1

    return p1
.end method

.method public removeAll()V
    .registers 2

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->DW:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->j6:Lcom/jcraft/jsch/IdentityRepository;

    invoke-interface {v0}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    return-void
.end method
