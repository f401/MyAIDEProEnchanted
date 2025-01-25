.class Lorg/b/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/b/a/b/e;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Ljava/lang/String;
    .registers 6

    array-length v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v1, :cond_e

    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    aget-byte v3, p1, v0

    if-eqz v3, :cond_9

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method
