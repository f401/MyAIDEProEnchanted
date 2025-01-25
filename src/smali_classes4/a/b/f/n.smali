.class La/b/f/n;
.super La/b/f/w;

# interfaces
.implements La/b/b/a/f;
.implements La/b/d/a/d;


# instance fields
.field final a:La/b/f/l;

.field private b:I

.field private c:I

.field private d:I

.field private e:La/b/c;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/StringBuffer;


# direct methods
.method private constructor <init>(La/b/f/l;)V
    .registers 3

    iput-object p1, p0, La/b/f/n;->a:La/b/f/l;

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, La/b/f/n;->i:Ljava/lang/StringBuffer;

    return-void
.end method

.method synthetic constructor <init>(La/b/f/l;La/b/f/m;)V
    .registers 3

    invoke-direct {p0, p1}, La/b/f/n;-><init>(La/b/f/l;)V

    return-void
.end method

.method private a(La/b/c;ZZZ)V
    .registers 14

    if-eqz p2, :cond_11

    const/4 v5, 0x0

    :goto_3
    iget-object v0, p0, La/b/f/n;->e:La/b/c;

    if-eqz v0, :cond_47

    if-eqz p3, :cond_37

    iget-object v0, p0, La/b/f/n;->a:La/b/f/l;

    iget-object v1, p0, La/b/f/n;->e:La/b/c;

    invoke-static {v0, p1, v1, v5, p4}, La/b/f/l;->a(La/b/f/l;La/b/c;La/b/c;Ljava/lang/String;Z)V

    :goto_10
    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/b/f/n;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "L***;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_37
    iget-object v0, p0, La/b/f/n;->a:La/b/f/l;

    iget v2, p0, La/b/f/n;->d:I

    iget-object v3, p0, La/b/f/n;->e:La/b/c;

    iget-object v4, p0, La/b/f/n;->f:Ljava/lang/String;

    move-object v1, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, La/b/f/l;->a(La/b/f/l;La/b/c;ILa/b/c;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_10

    :cond_47
    iget-object v2, p0, La/b/f/n;->a:La/b/f/l;

    if-eqz p3, :cond_55

    const-string v4, "<init>"

    :goto_4d
    move-object v3, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, La/b/f/l;->a(La/b/f/l;La/b/c;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_10

    :cond_55
    iget-object v4, p0, La/b/f/n;->f:Ljava/lang/String;

    goto :goto_4d
.end method


# virtual methods
.method public a()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, La/b/f/n;->b:I

    iput-object v0, p0, La/b/f/n;->e:La/b/c;

    iput-object v0, p0, La/b/f/n;->f:Ljava/lang/String;

    iget-object v0, p0, La/b/f/n;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method public a(La/b/c;La/b/b/a;)V
    .registers 6

    const/4 v2, 0x1

    iget v0, p0, La/b/f/n;->b:I

    sparse-switch v0, :sswitch_data_46

    iget-object v0, p2, La/b/b/a;->b:La/b/c;

    iput-object v0, p0, La/b/f/n;->e:La/b/c;

    iput v2, p0, La/b/f/n;->b:I

    :goto_c
    return-void

    :sswitch_d
    iget-object v0, p2, La/b/b/a;->b:La/b/c;

    iput-object v0, p0, La/b/f/n;->e:La/b/c;

    iput v2, p0, La/b/f/n;->b:I

    goto :goto_c

    :sswitch_14
    invoke-virtual {p2, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java/lang/Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    iput v0, p0, La/b/f/n;->h:I

    iget v0, p0, La/b/f/n;->g:I

    if-lez v0, :cond_2b

    const/4 v0, 0x4

    :goto_28
    iput v0, p0, La/b/f/n;->b:I

    goto :goto_c

    :cond_2b
    const/16 v0, 0x8

    goto :goto_28

    :cond_2e
    iget-object v0, p2, La/b/b/a;->b:La/b/c;

    iput-object v0, p0, La/b/f/n;->e:La/b/c;

    iput v2, p0, La/b/f/n;->b:I

    goto :goto_c

    :sswitch_35
    invoke-virtual {p2, p1}, La/b/b/a;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/b/f/i;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/b/f/n;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x7

    iput v0, p0, La/b/f/n;->b:I

    goto :goto_c

    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0x3 -> :sswitch_14
        0x6 -> :sswitch_35
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 3

    invoke-virtual {p0}, La/b/f/n;->a()V

    return-void
.end method

.method public a(La/b/c;La/b/b/d;)V
    .registers 7

    iget v0, p0, La/b/f/n;->b:I

    packed-switch v0, :pswitch_data_3e

    invoke-virtual {p0}, La/b/f/n;->a()V

    :goto_8
    return-void

    :pswitch_9  #0x6
    invoke-virtual {p2, p1}, La/b/b/d;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, La/b/b/d;->b(La/b/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, La/b/b/d;->c(La/b/c;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "java/lang/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "TYPE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "Ljava/lang/Class;"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-static {v0}, La/b/f/i;->q(Ljava/lang/String;)C

    move-result v0

    iget-object v1, p0, La/b/f/n;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x7

    iput v0, p0, La/b/f/n;->b:I

    goto :goto_8

    :cond_3a
    invoke-virtual {p0}, La/b/f/n;->a()V

    goto :goto_8

    :pswitch_data_3e
    .packed-switch 0x6
        :pswitch_9  #00000006
    .end packed-switch
.end method

.method public a(La/b/c;La/b/b/l;)V
    .registers 10

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2, p1}, La/b/b/l;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java/lang/Class"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-virtual {p2, p1}, La/b/b/l;->b(La/b/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1}, La/b/b/l;->c(La/b/c;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, La/b/f/n;->b:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_45

    const-string v2, "(Ljava/lang/String;)Ljava/lang/reflect/Field;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, La/b/f/n;->f:Ljava/lang/String;

    if-eqz v2, :cond_45

    const-string v1, "getField"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-direct {p0, p1, v5, v4, v4}, La/b/f/n;->a(La/b/c;ZZZ)V

    :goto_34
    return-void

    :cond_35
    const-string v1, "getDeclaredField"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-direct {p0, p1, v5, v4, v5}, La/b/f/n;->a(La/b/c;ZZZ)V

    goto :goto_34

    :cond_41
    invoke-virtual {p0}, La/b/f/n;->a()V

    goto :goto_34

    :cond_45
    iget v2, p0, La/b/f/n;->b:I

    if-ne v2, v6, :cond_6d

    const-string v2, "([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v1, "getConstructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-direct {p0, p1, v4, v5, v4}, La/b/f/n;->a(La/b/c;ZZZ)V

    goto :goto_34

    :cond_5d
    const-string v1, "getDeclaredConstructor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-direct {p0, p1, v4, v5, v5}, La/b/f/n;->a(La/b/c;ZZZ)V

    goto :goto_34

    :cond_69
    invoke-virtual {p0}, La/b/f/n;->a()V

    goto :goto_34

    :cond_6d
    iget v2, p0, La/b/f/n;->b:I

    if-ne v2, v6, :cond_99

    const-string v2, "(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    iget-object v1, p0, La/b/f/n;->f:Ljava/lang/String;

    if-eqz v1, :cond_99

    const-string v1, "getMethod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-direct {p0, p1, v4, v4, v4}, La/b/f/n;->a(La/b/c;ZZZ)V

    goto :goto_34

    :cond_89
    const-string v1, "getDeclaredMethod"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-direct {p0, p1, v4, v4, v5}, La/b/f/n;->a(La/b/c;ZZZ)V

    goto :goto_34

    :cond_95
    invoke-virtual {p0}, La/b/f/n;->a()V

    goto :goto_34

    :cond_99
    invoke-virtual {p0}, La/b/f/n;->a()V

    goto :goto_34

    :cond_9d
    invoke-virtual {p0}, La/b/f/n;->a()V

    goto :goto_34
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 4

    iget v0, p0, La/b/f/n;->b:I

    packed-switch v0, :pswitch_data_16

    const/4 v0, 0x0

    iput-object v0, p0, La/b/f/n;->e:La/b/c;

    :pswitch_8  #0x1
    iget v0, p0, La/b/f/n;->c:I

    iput v0, p0, La/b/f/n;->d:I

    invoke-virtual {p2, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/f/n;->f:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, La/b/f/n;->b:I

    return-void

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8  #00000001
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 8

    invoke-virtual {p5}, La/b/d/b;->b()B

    move-result v0

    sparse-switch v0, :sswitch_data_28

    invoke-virtual {p0}, La/b/f/n;->a()V

    :goto_a
    return-void

    :sswitch_b
    iput p4, p0, La/b/f/n;->c:I

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_a

    :sswitch_13
    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_a

    :sswitch_19
    iget v0, p0, La/b/f/n;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    iget v0, p5, La/b/d/b;->a:I

    invoke-interface {p1, v0, p0}, La/b/c;->a(ILa/b/b/a/f;)V

    goto :goto_a

    :cond_24
    invoke-virtual {p0}, La/b/f/n;->a()V

    goto :goto_a

    :sswitch_data_28
    .sparse-switch
        -0x4e -> :sswitch_13
        -0x4a -> :sswitch_13
        -0x43 -> :sswitch_19
        0x12 -> :sswitch_b
    .end sparse-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    invoke-virtual {p0}, La/b/f/n;->a()V

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/h;)V
    .registers 10

    const/16 v0, 0x8

    const/4 v3, 0x3

    iget v1, p0, La/b/f/n;->b:I

    invoke-virtual {p5}, La/b/d/h;->b()B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    sparse-switch v1, :sswitch_data_50

    invoke-virtual {p0}, La/b/f/n;->a()V

    :goto_12
    return-void

    :sswitch_13
    invoke-virtual {p0}, La/b/f/n;->a()V

    iget v0, p5, La/b/d/h;->a:I

    iput v0, p0, La/b/f/n;->g:I

    iput v3, p0, La/b/f/n;->b:I

    goto :goto_12

    :sswitch_1d
    iget v0, p5, La/b/d/h;->a:I

    iput v0, p0, La/b/f/n;->g:I

    iput v3, p0, La/b/f/n;->b:I

    goto :goto_12

    :sswitch_24
    const/4 v1, 0x0

    iput v1, p0, La/b/f/n;->g:I

    iput v0, p0, La/b/f/n;->b:I

    goto :goto_12

    :sswitch_2a
    const/4 v0, 0x5

    iput v0, p0, La/b/f/n;->b:I

    goto :goto_12

    :sswitch_2e
    iget v0, p0, La/b/f/n;->h:I

    iget v1, p5, La/b/d/h;->a:I

    if-ne v0, v1, :cond_38

    const/4 v0, 0x6

    iput v0, p0, La/b/f/n;->b:I

    goto :goto_12

    :cond_38
    invoke-virtual {p0}, La/b/f/n;->a()V

    iget v0, p5, La/b/d/h;->a:I

    iput v0, p0, La/b/f/n;->g:I

    iput v3, p0, La/b/f/n;->b:I

    goto :goto_12

    :sswitch_42
    iget v1, p0, La/b/f/n;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/b/f/n;->h:I

    iget v2, p0, La/b/f/n;->g:I

    if-ge v1, v2, :cond_4d

    const/4 v0, 0x4

    :cond_4d
    iput v0, p0, La/b/f/n;->b:I

    goto :goto_12

    :sswitch_data_50
    .sparse-switch
        0x102 -> :sswitch_24
        0x300 -> :sswitch_13
        0x301 -> :sswitch_13
        0x302 -> :sswitch_1d
        0x303 -> :sswitch_13
        0x304 -> :sswitch_13
        0x305 -> :sswitch_2e
        0x306 -> :sswitch_13
        0x307 -> :sswitch_13
        0x308 -> :sswitch_13
        0x5307 -> :sswitch_42
        0x5904 -> :sswitch_2a
    .end sparse-switch
.end method
