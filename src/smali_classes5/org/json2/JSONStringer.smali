.class public Lorg/json2/JSONStringer;
.super Lorg/json2/JSONWriter;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p0, v0}, Lorg/json2/JSONWriter;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    iget-char v0, p0, Lorg/json2/JSONStringer;->mode:C

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lorg/json2/JSONStringer;->writer:Ljava/lang/Appendable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
