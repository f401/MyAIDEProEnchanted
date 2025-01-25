.class public Lsun1/security/x509/GeneralSubtrees;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final trees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun1/security/x509/GeneralSubtree;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lsun1/security/util/DerValue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun1/security/x509/GeneralSubtrees;-><init>()V

    iget-byte v0, p1, Lsun1/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_21

    :goto_9
    iget-object v0, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun1/security/util/DerInputStream;->available()I

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    new-instance v0, Lsun1/security/x509/GeneralSubtree;

    iget-object v1, p1, Lsun1/security/util/DerValue;->data:Lsun1/security/util/DerInputStream;

    invoke-virtual {v1}, Lsun1/security/util/DerInputStream;->getDerValue()Lsun1/security/util/DerValue;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun1/security/x509/GeneralSubtree;-><init>(Lsun1/security/util/DerValue;)V

    invoke-virtual {p0, v0}, Lsun1/security/x509/GeneralSubtrees;->add(Lsun1/security/x509/GeneralSubtree;)V

    goto :goto_9

    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding of GeneralSubtrees."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Lsun1/security/x509/GeneralSubtrees;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Lsun1/security/x509/GeneralSubtree;)V
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .registers 2

    new-instance v0, Lsun1/security/x509/GeneralSubtrees;

    invoke-direct {v0, p0}, Lsun1/security/x509/GeneralSubtrees;-><init>(Lsun1/security/x509/GeneralSubtrees;)V

    return-object v0
.end method

.method public encode(Lsun1/security/util/DerOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lsun1/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun1/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0}, Lsun1/security/x509/GeneralSubtrees;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_12

    const/16 v0, 0x30

    invoke-virtual {p1, v0, v1}, Lsun1/security/util/DerOutputStream;->write(BLsun1/security/util/DerOutputStream;)V

    return-void

    :cond_12
    invoke-virtual {p0, v0}, Lsun1/security/x509/GeneralSubtrees;->get(I)Lsun1/security/x509/GeneralSubtree;

    move-result-object v3

    invoke-virtual {v3, v1}, Lsun1/security/x509/GeneralSubtree;->encode(Lsun1/security/util/DerOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lsun1/security/x509/GeneralSubtrees;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    check-cast p1, Lsun1/security/x509/GeneralSubtrees;

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    iget-object v1, p1, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public get(I)Lsun1/security/x509/GeneralSubtree;
    .registers 3

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun1/security/x509/GeneralSubtree;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   GeneralSubtrees:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsun1/security/x509/GeneralSubtrees;->trees:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
