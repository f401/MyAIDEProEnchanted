.class public Lorg/a/a/a/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/a/a/a/r;


# instance fields
.field public b:Lorg/a/a/a/w;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/a/a/a/r;

    invoke-direct {v0}, Lorg/a/a/a/r;-><init>()V

    sput-object v0, Lorg/a/a/a/w;->a:Lorg/a/a/a/r;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/a/w;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Lorg/a/a/a/w;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    if-eqz p0, :cond_e

    if-ne p0, p2, :cond_18

    :cond_e
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    if-nez p1, :cond_3b

    invoke-virtual {p0}, Lorg/a/a/a/w;->a()Z

    move-result v0

    if-nez v0, :cond_25

    iget v0, p0, Lorg/a/a/a/w;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_25
    :goto_25
    iget-object v0, p0, Lorg/a/a/a/w;->b:Lorg/a/a/a/w;

    if-eqz v0, :cond_38

    if-nez p1, :cond_33

    iget-object v0, p0, Lorg/a/a/a/w;->b:Lorg/a/a/a/w;

    invoke-virtual {v0}, Lorg/a/a/a/w;->a()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_33
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    iget-object p0, p0, Lorg/a/a/a/w;->b:Lorg/a/a/a/w;

    goto :goto_a

    :cond_3b
    invoke-virtual {p0}, Lorg/a/a/a/w;->b()I

    move-result v0

    if-ltz v0, :cond_51

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_51

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_51
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4d
.end method

.method public a()Z
    .registers 3

    iget v0, p0, Lorg/a/a/a/w;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/a/a/a/w;->a(Ljava/util/List;Lorg/a/a/a/w;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
