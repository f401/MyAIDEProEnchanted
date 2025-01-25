.class public Lcom/baidu/mobstat/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobstat/er;


# static fields
.field protected static b:[B


# instance fields
.field private a:Ljava/nio/ByteBuffer;

.field protected c:Z

.field protected d:Lcom/baidu/mobstat/es$a;

.field protected e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/mobstat/et;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/es$a;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/mobstat/et;->d:Lcom/baidu/mobstat/es$a;

    .line 22
    sget-object p1, Lcom/baidu/mobstat/et;->b:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/es;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/mobstat/et;->c:Z

    .line 32
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/et;->d:Lcom/baidu/mobstat/es$a;

    .line 33
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    .line 34
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->e()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mobstat/et;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/mobstat/es$a;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/baidu/mobstat/et;->d:Lcom/baidu/mobstat/es$a;

    return-void
.end method

.method public a(Lcom/baidu/mobstat/es;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ek;
        }
    .end annotation

    .line 79
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->c()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_1e

    .line 81
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 83
    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_6b

    .line 86
    :cond_1e
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 87
    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 90
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_5e

    .line 91
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 93
    iget-object v2, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 94
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 95
    iput-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    goto :goto_63

    .line 98
    :cond_5e
    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 100
    :goto_63
    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 101
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 103
    :goto_6b
    invoke-interface {p1}, Lcom/baidu/mobstat/es;->d()Z

    move-result p1

    iput-boolean p1, p0, Lcom/baidu/mobstat/et;->c:Z

    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/mobstat/ej;
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/baidu/mobstat/et;->c:Z

    return-void
.end method

.method public b(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lcom/baidu/mobstat/et;->e:Z

    return-void
.end method

.method public c()Ljava/nio/ByteBuffer;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .line 39
    iget-boolean v0, p0, Lcom/baidu/mobstat/et;->c:Z

    return v0
.end method

.method public e()Z
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/baidu/mobstat/et;->e:Z

    return v0
.end method

.method public f()Lcom/baidu/mobstat/es$a;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/baidu/mobstat/et;->d:Lcom/baidu/mobstat/es$a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Framedata{ optcode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/mobstat/et;->f()Lcom/baidu/mobstat/es$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/baidu/mobstat/et;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", payloadlength:[pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mobstat/et;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/mobstat/fe;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
