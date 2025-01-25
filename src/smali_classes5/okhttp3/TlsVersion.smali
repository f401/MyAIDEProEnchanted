.class public final enum Lokhttp3/TlsVersion;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lokhttp3/TlsVersion;

.field public static final enum SSL_3_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_1:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_2:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_3:Lokhttp3/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Lokhttp3/TlsVersion;

    const-string v1, "TLS_1_3"

    const-string v2, "TLSv1.3"

    invoke-direct {v0, v1, v7, v2}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    new-instance v1, Lokhttp3/TlsVersion;

    const-string v2, "TLS_1_2"

    const-string v3, "TLSv1.2"

    invoke-direct {v1, v2, v8, v3}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    new-instance v2, Lokhttp3/TlsVersion;

    const-string v3, "TLS_1_1"

    const-string v4, "TLSv1.1"

    invoke-direct {v2, v3, v9, v4}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    new-instance v3, Lokhttp3/TlsVersion;

    const-string v4, "TLS_1_0"

    const-string v5, "TLSv1"

    invoke-direct {v3, v4, v10, v5}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    new-instance v4, Lokhttp3/TlsVersion;

    const-string v5, "SSL_3_0"

    const-string v6, "SSLv3"

    invoke-direct {v4, v5, v11, v6}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    const/4 v5, 0x5

    new-array v5, v5, [Lokhttp3/TlsVersion;

    aput-object v0, v5, v7

    aput-object v1, v5, v8

    aput-object v2, v5, v9

    aput-object v3, v5, v10

    aput-object v4, v5, v11

    sput-object v5, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    :cond_a
    const/4 v0, -0x1

    :goto_b
    packed-switch v0, :pswitch_data_7c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected TLS version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_25
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    goto :goto_b

    :sswitch_2f
    const-string v0, "SSLv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x3

    goto :goto_b

    :sswitch_39
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :sswitch_43
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :sswitch_4d
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :pswitch_57  #0x4
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    :goto_59
    return-object v0

    :pswitch_5a  #0x3
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    goto :goto_59

    :pswitch_5d  #0x2
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    goto :goto_59

    :pswitch_60  #0x1
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    goto :goto_59

    :pswitch_63  #0x0
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    goto :goto_59

    :sswitch_data_66
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_4d
        -0x1dfc3f26 -> :sswitch_43
        -0x1dfc3f25 -> :sswitch_39
        0x4b88569 -> :sswitch_2f
        0x4c38896 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_63  #00000000
        :pswitch_60  #00000001
        :pswitch_5d  #00000002
        :pswitch_5a  #00000003
        :pswitch_57  #00000004
    .end packed-switch
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_16

    aget-object v3, p0, v0

    invoke-static {v3}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .registers 2

    const-class v0, Lokhttp3/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/TlsVersion;

    return-object v0
.end method

.method public static values()[Lokhttp3/TlsVersion;
    .registers 1

    sget-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    invoke-virtual {v0}, [Lokhttp3/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
