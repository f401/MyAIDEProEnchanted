.class Lorg/objectweb/asm/Handler;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/objectweb/asm/Label;

.field b:Lorg/objectweb/asm/Label;

.field c:Lorg/objectweb/asm/Label;

.field d:Ljava/lang/String;

.field e:I

.field f:Lorg/objectweb/asm/Handler;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Handler;
    .registers 7

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_3
    :goto_3
    return-object p0

    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    invoke-static {v0, p1, p2}, Lorg/objectweb/asm/Handler;->a(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Handler;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    iget-object v0, p0, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    iget v1, v0, Lorg/objectweb/asm/Label;->c:I

    iget-object v0, p0, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    iget v2, v0, Lorg/objectweb/asm/Label;->c:I

    iget v3, p1, Lorg/objectweb/asm/Label;->c:I

    if-nez p2, :cond_26

    const v0, 0x7fffffff

    :goto_1b
    if-ge v3, v2, :cond_3

    if-le v0, v1, :cond_3

    if-gt v3, v1, :cond_2c

    if-lt v0, v2, :cond_29

    iget-object p0, p0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    goto :goto_3

    :cond_26
    iget v0, p2, Lorg/objectweb/asm/Label;->c:I

    goto :goto_1b

    :cond_29
    iput-object p2, p0, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    goto :goto_3

    :cond_2c
    if-lt v0, v2, :cond_31

    iput-object p1, p0, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    goto :goto_3

    :cond_31
    new-instance v0, Lorg/objectweb/asm/Handler;

    invoke-direct {v0}, Lorg/objectweb/asm/Handler;-><init>()V

    iput-object p2, v0, Lorg/objectweb/asm/Handler;->a:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->c:Lorg/objectweb/asm/Label;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->c:Lorg/objectweb/asm/Label;

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->d:Ljava/lang/String;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->d:Ljava/lang/String;

    iget v1, p0, Lorg/objectweb/asm/Handler;->e:I

    iput v1, v0, Lorg/objectweb/asm/Handler;->e:I

    iget-object v1, p0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    iput-object v1, v0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    iput-object p1, p0, Lorg/objectweb/asm/Handler;->b:Lorg/objectweb/asm/Label;

    iput-object v0, p0, Lorg/objectweb/asm/Handler;->f:Lorg/objectweb/asm/Handler;

    goto :goto_3
.end method
