.class public Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;
.super Lorg/apache/commons/io/input/ObservableInputStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;
    }
.end annotation


# instance fields
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ObservableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->messageDigest:Ljava/security/MessageDigest;

    new-instance v0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;

    invoke-direct {v0, p2}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream$MessageDigestMaintainingObserver;-><init>(Ljava/security/MessageDigest;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->add(Lorg/apache/commons/io/input/ObservableInputStream$Observer;)V

    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/input/MessageDigestCalculatingInputStream;->messageDigest:Ljava/security/MessageDigest;

    return-object v0
.end method
