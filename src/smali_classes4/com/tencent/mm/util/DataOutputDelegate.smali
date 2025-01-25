.class public Lcom/tencent/mm/util/DataOutputDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/DataOutput;


# instance fields
.field protected final mDelegate:Ljava/io/DataOutput;


# direct methods
.method public constructor <init>(Ljava/io/DataOutput;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    return-void
.end method


# virtual methods
.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2, p3}, Ljava/io/DataOutput;->write([BII)V

    return-void
.end method

.method public writeBoolean(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBoolean(Z)V

    return-void
.end method

.method public writeByte(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeByte(I)V

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeBytes(Ljava/lang/String;)V

    return-void
.end method

.method public writeChar(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChar(I)V

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeChars(Ljava/lang/String;)V

    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeDouble(D)V

    return-void
.end method

.method public writeFloat(F)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeFloat(F)V

    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1, p2}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method

.method public writeShort(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeShort(I)V

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V^",
            "Ljava/io/IOException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    iget-object v0, p0, Lcom/tencent/mm/util/DataOutputDelegate;->mDelegate:Ljava/io/DataOutput;

    invoke-interface {v0, p1}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
