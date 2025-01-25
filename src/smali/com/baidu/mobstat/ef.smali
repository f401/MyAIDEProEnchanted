.class public abstract Lcom/baidu/mobstat/ef;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ef$a;,
        Lcom/baidu/mobstat/ef$b;
    }
.end annotation


# static fields
.field public static a:I = 0x3e8

.field public static b:I = 0x40

.field public static final c:[B


# instance fields
.field protected d:Lcom/baidu/mobstat/ea$b;

.field protected e:Lcom/baidu/mobstat/es$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 53
    const-string v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/ef;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mobstat/ef;->d:Lcom/baidu/mobstat/ea$b;

    .line 58
    iput-object v0, p0, Lcom/baidu/mobstat/ef;->e:Lcom/baidu/mobstat/es$a;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/baidu/mobstat/ea$b;)Lcom/baidu/mobstat/ew;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;,
            Lcom/baidu/mobstat/ei;
        }
    .end annotation

    .line 88
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 92
    const-string v1, " "

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 93
    array-length v1, v0

    if-ne v1, v2, :cond_72

    .line 97
    sget-object v1, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p1, v1, :cond_2d

    .line 99
    new-instance p1, Lcom/baidu/mobstat/ey;

    invoke-direct {p1}, Lcom/baidu/mobstat/ey;-><init>()V

    .line 100
    move-object v1, p1

    check-cast v1, Lcom/baidu/mobstat/fc;

    .line 101
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v4

    invoke-interface {v1, v4}, Lcom/baidu/mobstat/fc;->a(S)V

    .line 102
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/fc;->a(Ljava/lang/String;)V

    goto :goto_37

    .line 105
    :cond_2d
    new-instance p1, Lcom/baidu/mobstat/ex;

    invoke-direct {p1}, Lcom/baidu/mobstat/ex;-><init>()V

    .line 106
    aget-object v0, v0, v3

    invoke-interface {p1, v0}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;)V

    .line 110
    :goto_37
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    :goto_3b
    if-eqz v0, :cond_69

    .line 111
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_69

    .line 112
    const-string v1, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 113
    array-length v1, v0

    if-ne v1, v2, :cond_61

    .line 115
    const/4 v1, 0x0

    aget-object v1, v0, v1

    aget-object v0, v0, v3

    const-string v4, "^ +"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/baidu/mobstat/ew;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 114
    :cond_61
    new-instance p0, Lcom/baidu/mobstat/el;

    const-string p1, "not an http header"

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/el;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_69
    if-eqz v0, :cond_6c

    return-object p1

    .line 119
    :cond_6c
    new-instance p0, Lcom/baidu/mobstat/ei;

    invoke-direct {p0}, Lcom/baidu/mobstat/ei;-><init>()V

    throw p0

    .line 94
    :cond_72
    new-instance p0, Lcom/baidu/mobstat/el;

    invoke-direct {p0}, Lcom/baidu/mobstat/el;-><init>()V

    throw p0

    .line 90
    :cond_78
    new-instance p1, Lcom/baidu/mobstat/ei;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    add-int/lit16 p0, p0, 0x80

    invoke-direct {p1, p0}, Lcom/baidu/mobstat/ei;-><init>(I)V

    goto :goto_85

    :goto_84
    throw p1

    :goto_85
    goto :goto_84
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x30

    .line 64
    :goto_a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v3, 0xd

    if-ne v1, v3, :cond_2d

    const/16 v1, 0xa

    if-ne v2, v1, :cond_2d

    .line 69
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0

    :cond_2d
    move v1, v2

    goto :goto_a

    .line 76
    :cond_2f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 3

    .line 81
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_15

    .line 82
    :cond_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/baidu/mobstat/fe;->a([BII)Ljava/lang/String;

    move-result-object p0

    :goto_15
    return-object p0
.end method


# virtual methods
.method public a(I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/em;,
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    if-ltz p1, :cond_3

    return p1

    .line 223
    :cond_3
    new-instance p1, Lcom/baidu/mobstat/ej;

    const/16 v0, 0x3ea

    const-string v1, "Negative count"

    invoke-direct {p1, v0, v1}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public abstract a(Lcom/baidu/mobstat/eu;Lcom/baidu/mobstat/fb;)Lcom/baidu/mobstat/ef$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation
.end method

.method public abstract a(Lcom/baidu/mobstat/ev;)Lcom/baidu/mobstat/ev;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation
.end method

.method public abstract a(Lcom/baidu/mobstat/es;)Ljava/nio/ByteBuffer;
.end method

.method public a(Lcom/baidu/mobstat/ez;Lcom/baidu/mobstat/ea$b;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobstat/ez;",
            "Lcom/baidu/mobstat/ea$b;",
            ")",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ez;Lcom/baidu/mobstat/ea$b;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/baidu/mobstat/ez;Lcom/baidu/mobstat/ea$b;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobstat/ez;",
            "Lcom/baidu/mobstat/ea$b;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    instance-of v0, p1, Lcom/baidu/mobstat/eu;

    if-eqz v0, :cond_20

    .line 172
    const-string v0, "GET "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    move-object v0, p1

    check-cast v0, Lcom/baidu/mobstat/eu;

    invoke-interface {v0}, Lcom/baidu/mobstat/eu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, " HTTP/1.1"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 175
    :cond_20
    instance-of v0, p1, Lcom/baidu/mobstat/fb;

    if-eqz v0, :cond_89

    .line 176
    const-string v0, "HTTP/1.1 101 "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    check-cast v0, Lcom/baidu/mobstat/fb;

    invoke-interface {v0}, Lcom/baidu/mobstat/fb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :goto_33
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {p1}, Lcom/baidu/mobstat/ez;->b()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    invoke-interface {p1, v2}, Lcom/baidu/mobstat/ez;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 190
    :cond_5b
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/baidu/mobstat/fe;->b(Ljava/lang/String;)[B

    move-result-object p2

    if-eqz p3, :cond_6d

    .line 193
    invoke-interface {p1}, Lcom/baidu/mobstat/ez;->c()[B

    move-result-object p1

    goto :goto_6e

    :cond_6d
    const/4 p1, 0x0

    :goto_6e
    if-nez p1, :cond_72

    const/4 p3, 0x0

    goto :goto_73

    .line 194
    :cond_72
    array-length p3, p1

    :goto_73
    array-length v0, p2

    add-int/2addr p3, v0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 195
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_81

    .line 197
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    :cond_81
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 178
    :cond_89
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unknown role"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_92

    :goto_91
    throw p1

    :goto_92
    goto :goto_91
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/es;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public a(Lcom/baidu/mobstat/ea$b;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/baidu/mobstat/ef;->d:Lcom/baidu/mobstat/ea$b;

    return-void
.end method

.method public abstract b()Lcom/baidu/mobstat/ef$a;
.end method

.method public abstract c()Lcom/baidu/mobstat/ef;
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/mobstat/es;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation
.end method

.method public d(Ljava/nio/ByteBuffer;)Lcom/baidu/mobstat/ez;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/baidu/mobstat/ef;->d:Lcom/baidu/mobstat/ea$b;

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ef;->a(Ljava/nio/ByteBuffer;Lcom/baidu/mobstat/ea$b;)Lcom/baidu/mobstat/ew;

    move-result-object p1

    return-object p1
.end method
