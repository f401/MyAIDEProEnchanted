.class Lcom/jcraft/jsch/KeyPair$ASN1Exception;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/KeyPair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ASN1Exception"
.end annotation


# instance fields
.field final j6:Lcom/jcraft/jsch/KeyPair;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/KeyPair;)V
    .registers 2

    iput-object p1, p0, Lcom/jcraft/jsch/KeyPair$ASN1Exception;->j6:Lcom/jcraft/jsch/KeyPair;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method
