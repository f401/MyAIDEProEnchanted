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
.field public static a:I

.field public static b:I

.field public static final c:[B


# instance fields
.field protected d:Lcom/baidu/mobstat/ea$b;

.field protected e:Lcom/baidu/mobstat/es$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/16 v0, 0x3e8

    sput v0, Lcom/baidu/mobstat/ef;->a:I

    .line 51
    const/16 v0, 0x40

    sput v0, Lcom/baidu/mobstat/ef;->b:I

    .line 53
    const-string v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/ef;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/baidu/mobstat/ef;->d:Lcom/baidu/mobstat/ea$b;

    .line 58
    iput-object v0, p0, Lcom/baidu/mobstat/ef;->e:Lcom/baidu/mobstat/es$a;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lcom/baidu/mobstat/ea$b;)Lcom/baidu/mobstat/ew;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/el;,
            Lcom/baidu/mobstat/ei;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 88
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/baidu/mobstat/ei;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/ei;-><init>(I)V

    throw v0

    .line 92
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 93
    array-length v0, v2

    if-eq v0, v3, :cond_1

    .line 94
    new-instance v0, Lcom/baidu/mobstat/el;

    invoke-direct {v0}, Lcom/baidu/mobstat/el;-><init>()V

    throw v0

    .line 97
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/ea$b;->a:Lcom/baidu/mobstat/ea$b;

    if-ne p1, v0, :cond_2

    .line 99
    new-instance v1, Lcom/baidu/mobstat/ey;

    invoke-direct {v1}, Lcom/baidu/mobstat/ey;-><init>()V

    move-object v0, v1

    .line 100
    check-cast v0, Lcom/baidu/mobstat/fc;

    .line 101
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-interface {v0, v3}, Lcom/baidu/mobstat/fc;->a(S)V

    .line 102
    aget-object v2, v2, v6

    invoke-interface {v0, v2}, Lcom/baidu/mobstat/fc;->a(Ljava/lang/String;)V

    .line 110
    :goto_0
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 112
    const-string v2, ":"

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 113
    array-length v2, v0

    if-eq v2, v6, :cond_3

    .line 114
    new-instance v0, Lcom/baidu/mobstat/el;

    const-string v1, "not an http header"

    invoke-direct {v0, v1}, Lcom/baidu/mobstat/el;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    new-instance v1, Lcom/baidu/mobstat/ex;

    invoke-direct {v1}, Lcom/baidu/mobstat/ex;-><init>()V

    .line 106
    aget-object v0, v2, v5

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/ev;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v5

    const-string v3, "^ +"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/baidu/mobstat/ew;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 118
    :cond_4
    if-nez v0, :cond_5

    .line 119
    new-instance v0, Lcom/baidu/mobstat/ei;

    invoke-direct {v0}, Lcom/baidu/mobstat/ei;-><init>()V

    throw v0

    .line 120
    :cond_5
    return-object v1
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 63
    const/16 v0, 0x30

    .line 64
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 67
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 68
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    const/16 v0, 0xa

    if-ne v1, v0, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v2

    .line 77
    :goto_1
    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .registers 4

    .line 81
    invoke-static {p0}, Lcom/baidu/mobstat/ef;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/baidu/mobstat/fe;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/em;,
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 222
    if-gez p1, :cond_0

    .line 223
    new-instance v0, Lcom/baidu/mobstat/ej;

    const/16 v1, 0x3ea

    const-string v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/ej;-><init>(ILjava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    return p1
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
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/baidu/mobstat/ef;->a(Lcom/baidu/mobstat/ez;Lcom/baidu/mobstat/ea$b;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/baidu/mobstat/ez;Lcom/baidu/mobstat/ea$b;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mobstat/ez;",
            "Lcom/baidu/mobstat/ea$b;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 171
    instance-of v0, p1, Lcom/baidu/mobstat/eu;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "GET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    .line 173
    check-cast v0, Lcom/baidu/mobstat/eu;

    invoke-interface {v0}, Lcom/baidu/mobstat/eu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :goto_0
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-interface {p1}, Lcom/baidu/mobstat/ez;->b()Ljava/util/Iterator;

    move-result-object v2

    .line 182
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-interface {p1, v0}, Lcom/baidu/mobstat/ez;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 175
    :cond_0
    instance-of v0, p1, Lcom/baidu/mobstat/fb;

    if-eqz v0, :cond_1

    .line 176
    const-string v0, "HTTP/1.1 101 "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lcom/baidu/mobstat/fb;

    invoke-interface {v0}, Lcom/baidu/mobstat/fb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown role"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_2
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fe;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 193
    if-eqz p3, :cond_4

    invoke-interface {p1}, Lcom/baidu/mobstat/ez;->c()[B

    move-result-object v0

    move-object v1, v0

    .line 194
    :goto_2
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 196
    if-eqz v1, :cond_3

    .line 197
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 198
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 199
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 193
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    .line 194
    :cond_5
    array-length v0, v1

    goto :goto_3
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
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

    .line 229
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
            "Ljava/util/List",
            "<",
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

    move-result-object v0

    return-object v0
.end method
