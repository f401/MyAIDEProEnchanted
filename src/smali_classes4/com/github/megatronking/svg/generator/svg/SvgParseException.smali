.class public Lcom/github/megatronking/svg/generator/svg/SvgParseException;
.super Lorg/dom4j/DocumentException;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Error occurred in read svg xml."

    invoke-direct {p0, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method
