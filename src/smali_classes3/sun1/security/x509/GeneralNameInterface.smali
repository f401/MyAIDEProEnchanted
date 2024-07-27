.class public interface abstract Lsun1/security/x509/GeneralNameInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract constrains(Lsun1/security/x509/GeneralNameInterface;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method public abstract encode(Lsun1/security/util/DerOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getType()I
.end method
