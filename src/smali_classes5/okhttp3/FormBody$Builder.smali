.class public final Lokhttp3/FormBody$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/FormBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .registers 3
    .param p1  # Ljava/nio/charset/Charset;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    iput-object p1, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .registers 11

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_27

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .registers 11

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2f

    if-eqz p2, :cond_27

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lokhttp3/FormBody;
    .registers 4

    new-instance v0, Lokhttp3/FormBody;

    iget-object v1, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
