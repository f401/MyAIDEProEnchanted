.class public Lorg/c/a/a/c/a/a/a/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/c/a/a/b/d/e/u;


# static fields
.field protected static final a:[Ljava/lang/String;


# instance fields
.field protected b:Ljava/lang/StringBuilder;

.field protected c:Ljava/util/HashSet;

.field protected d:Ljava/util/HashMap;

.field protected e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "i"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "j"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "k"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "m"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "n"

    aput-object v2, v0, v1

    sput-object v0, Lorg/c/a/a/c/a/a/a/c/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashSet;Ljava/util/HashMap;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lorg/c/a/a/c/a/a/a/c/d;->c:Ljava/util/HashSet;

    iput-object p2, p0, Lorg/c/a/a/c/a/a/a/c/d;->d:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x1

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-le v0, v3, :cond_22

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_22
    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/c;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/g;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/c/a/a/c/a/a/a/c/d;->a(Lorg/c/a/a/b/d/e/l;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/h;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/h;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/c/a/a/c/a/a/a/c/d;->a(Lorg/c/a/a/b/d/e/l;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/i;)V
    .registers 3

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/i;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/c/a/a/c/a/a/a/c/d;->a(Lorg/c/a/a/b/d/e/l;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/k;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_d0

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "arrayOf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v0

    invoke-static {v0}, Lorg/c/a/a/c/a/a/c/aa;->b(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_d6

    :goto_1f
    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/c/d;->a(Lorg/c/a/a/b/d/e/l;)V

    :goto_22
    return-void

    :pswitch_23  #0x0
    invoke-virtual {p1}, Lorg/c/a/a/b/d/e/k;->g()I

    move-result v1

    invoke-static {v1}, Lorg/c/a/a/c/a/a/c/aa;->b(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_f8

    goto :goto_1f

    :sswitch_2f
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "bool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_37
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_3f
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_47
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_4f
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_57
    sget-object v1, Lorg/c/a/a/c/a/a/a/c/d;->a:[Ljava/lang/String;

    array-length v2, v1

    :goto_5a
    if-lt v0, v2, :cond_64

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_64
    aget-object v3, v1, v0

    iget-object v4, p0, Lorg/c/a/a/c/a/a/a/c/d;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_76

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->c:Ljava/util/HashSet;

    iput-object v3, p0, Lorg/c/a/a/c/a/a/a/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_76
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :sswitch_79
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_81
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_89
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_91
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Char"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :sswitch_99
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Double"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    :sswitch_a2
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Float"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    :sswitch_ab
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Int"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    :sswitch_b4
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Long"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    :sswitch_bd
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    :sswitch_c6
    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "Boolean"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1f

    nop

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_23  #00000000
    .end packed-switch

    :sswitch_data_d6
    .sparse-switch
        0x1 -> :sswitch_c6
        0x2 -> :sswitch_91
        0x4 -> :sswitch_a2
        0x8 -> :sswitch_99
        0x10 -> :sswitch_89
        0x20 -> :sswitch_bd
        0x40 -> :sswitch_ab
        0x80 -> :sswitch_b4
    .end sparse-switch

    :sswitch_data_f8
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_3f
        0x4 -> :sswitch_4f
        0x8 -> :sswitch_47
        0x10 -> :sswitch_37
        0x20 -> :sswitch_81
        0x40 -> :sswitch_57
        0x80 -> :sswitch_79
    .end sparse-switch
.end method

.method protected a(Lorg/c/a/a/b/d/e/l;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v3, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1b
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->e:Ljava/lang/String;

    :goto_23
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->c:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/c/a/a/c/a/a/a/c/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->c:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_35
    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/c/a/a/c/a/a/a/c/d;->e:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_4a
    move v0, v1

    goto :goto_1b
.end method

.method protected a(Lorg/c/a/a/b/d/e/l;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-interface {p1}, Lorg/c/a/a/b/d/e/l;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_50

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "arrayOf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    invoke-virtual {p0, p1}, Lorg/c/a/a/c/a/a/a/c/d;->a(Lorg/c/a/a/b/d/e/l;)V

    return-void

    :pswitch_1c  #0x0
    const-string v0, "Class"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "clazz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_2c
    const-string v0, "String"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "str"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_3c
    const-string v0, "Boolean"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lorg/c/a/a/c/a/a/a/c/d;->b:Ljava/lang/StringBuilder;

    const-string v1, "bool"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_4c
    invoke-virtual {p0, p2}, Lorg/c/a/a/c/a/a/a/c/d;->a(Ljava/lang/String;)V

    goto :goto_18

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_1c  #00000000
    .end packed-switch
.end method

.method public a(Lorg/c/a/a/b/d/e/p;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/q;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/r;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/s;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/v;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/w;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/x;)V
    .registers 2

    return-void
.end method

.method public a(Lorg/c/a/a/b/d/e/y;)V
    .registers 2

    return-void
.end method
