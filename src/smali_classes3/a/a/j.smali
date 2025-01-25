.class public La/a/j;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/j;
.implements La/b/b/a/f;
.implements La/b/d/a/d;


# instance fields
.field private final a:La/b/d/a/d;

.field private final b:La/b/c/v;

.field private c:La/b/c/ar;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:[I


# direct methods
.method public constructor <init>(La/b/d/a/d;La/b/c/v;)V
    .registers 3

    invoke-direct {p0}, La/b/f/w;-><init>()V

    iput-object p1, p0, La/a/j;->a:La/b/d/a/d;

    iput-object p2, p0, La/a/j;->b:La/b/c/v;

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_14

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_18

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    goto :goto_18

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_18
    :goto_18
    return p1
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "java/lang/invoke/StringConcatFactory"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)I
    .registers 2

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x5

    goto :goto_5a

    :cond_e
    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    goto :goto_5a

    :cond_1c
    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 p0, 0xb

    goto :goto_5a

    :cond_2b
    const/16 v0, 0x4a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const/16 p0, 0x14

    goto :goto_5a

    :cond_3a
    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 p0, 0xd

    goto :goto_5a

    :cond_49
    const/16 v0, 0x44

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_58

    const/16 p0, 0x17

    goto :goto_5a

    :cond_58
    const/16 p0, 0x10

    :goto_5a
    return p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "(Z)Ljava/lang/StringBuilder;"

    goto :goto_67

    :cond_f
    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "(C)Ljava/lang/StringBuilder;"

    goto :goto_67

    :cond_1e
    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string p0, "(I)Ljava/lang/StringBuilder;"

    goto :goto_67

    :cond_2d
    const/16 v0, 0x4a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string p0, "(J)Ljava/lang/StringBuilder;"

    goto :goto_67

    :cond_3c
    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string p0, "(F)Ljava/lang/StringBuilder;"

    goto :goto_67

    :cond_4b
    const/16 v0, 0x44

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string p0, "(D)Ljava/lang/StringBuilder;"

    goto :goto_67

    :cond_5a
    const-string v0, "Ljava/lang/String;"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    const-string p0, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    goto :goto_67

    :cond_65
    const-string p0, "(Ljava/lang/Object;)Ljava/lang/StringBuilder;"

    :goto_67
    return-object p0
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/a/b;)V
    .registers 5

    move-object v0, p1

    check-cast v0, La/b/k;

    iget v1, p2, La/b/a/b;->a:I

    invoke-virtual {v0, v1}, La/b/k;->l(I)La/b/b/b;

    move-result-object v1

    check-cast v1, La/b/b/j;

    invoke-virtual {v1, p1}, La/b/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, La/a/j;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    iget-object p1, p2, La/b/a/b;->c:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, La/b/k;->l(I)La/b/b/b;

    move-result-object p1

    check-cast p1, La/b/b/r;

    invoke-virtual {p1, v0}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La/a/j;->f:Ljava/lang/String;

    iget p1, p2, La/b/a/b;->b:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_34

    iget-object p1, p2, La/b/a/b;->c:[I

    iget p2, p2, La/b/a/b;->b:I

    invoke-static {p1, v0, p2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    goto :goto_36

    :cond_34
    new-array p1, v1, [I

    :goto_36
    iput-object p1, p0, La/a/j;->g:[I

    :cond_38
    return-void
.end method

.method public a(La/b/c;La/b/a/c;)V
    .registers 4

    iget v0, p0, La/a/j;->e:I

    invoke-virtual {p2, p1, v0, p0}, La/b/a/c;->a(La/b/c;ILa/b/a/d/j;)V

    return-void
.end method

.method public a(La/b/c;La/b/b/b;)V
    .registers 5

    iget p1, p0, La/a/j;->d:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, La/a/j;->d:I

    iget-object p1, p0, La/a/j;->c:La/b/c/ar;

    const-string p2, "append"

    const-string v0, "(Ljava/lang/Object;)Ljava/lang/StringBuilder;"

    const-string v1, "java/lang/StringBuilder"

    invoke-virtual {p1, v1, p2, v0}, La/b/c/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/b/r;)V
    .registers 5

    iget v0, p0, La/a/j;->d:I

    invoke-virtual {p2, p1}, La/b/b/r;->a(La/b/c;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, La/a/j;->d:I

    iget-object p1, p0, La/a/j;->c:La/b/c/ar;

    const-string p2, "append"

    const-string v0, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    const-string v1, "java/lang/StringBuilder"

    invoke-virtual {p1, v1, p2, v0}, La/b/c/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V
    .registers 20

    move-object v0, p0

    move-object/from16 v6, p5

    iget-byte v1, v6, La/b/d/b;->c:B

    const/16 v2, -0x46

    if-ne v1, v2, :cond_122

    move-object v1, p1

    check-cast v1, La/b/k;

    iget v2, v6, La/b/d/b;->a:I

    invoke-virtual {v1, v2}, La/b/k;->l(I)La/b/b/b;

    move-result-object v2

    check-cast v2, La/b/b/h;

    invoke-virtual {v2}, La/b/b/h;->b()I

    move-result v3

    iput v3, v0, La/a/j;->e:I

    const/4 v3, 0x0

    iput-object v3, v0, La/a/j;->f:Ljava/lang/String;

    iput-object v3, v0, La/a/j;->g:[I

    invoke-virtual {v1, p0}, La/b/k;->a(La/b/a/d/i;)V

    iget-object v3, v0, La/a/j;->f:Ljava/lang/String;

    if-eqz v3, :cond_122

    invoke-virtual {v2, v1}, La/b/b/h;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, La/b/c/ar;

    invoke-direct {v3, v1}, La/b/c/ar;-><init>(La/b/k;)V

    new-instance v4, La/b/c/ar;

    invoke-direct {v4, v1}, La/b/c/ar;-><init>(La/b/k;)V

    iput-object v4, v0, La/a/j;->c:La/b/c/ar;

    const/4 v4, 0x0

    iput v4, v0, La/a/j;->d:I

    new-instance v5, La/b/f/q;

    invoke-direct {v5, v2}, La/b/f/q;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_43
    invoke-virtual {v5}, La/b/f/q;->d()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-virtual {v5}, La/b/f/q;->e()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_51
    move-object/from16 v7, p3

    iget v5, v7, La/b/a/d;->d:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v2, v8}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    :goto_5d
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v5, v9}, La/b/c/ar;->b(ILjava/lang/String;)La/b/c/ar;

    invoke-static {v9}, La/b/f/i;->v(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_5d

    :cond_72
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    move v8, v5

    const/4 v5, 0x0

    :goto_78
    iget-object v9, v0, La/a/j;->f:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "java/lang/StringBuilder"

    if-ge v4, v9, :cond_e2

    iget-object v9, v0, La/a/j;->f:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const-string v11, "append"

    packed-switch v9, :pswitch_data_124

    iget-object v9, v0, La/a/j;->f:Ljava/lang/String;

    invoke-static {v9, v4}, La/a/j;->a(Ljava/lang/String;I)I

    move-result v9

    iget v12, v0, La/a/j;->d:I

    sub-int v13, v9, v4

    add-int/2addr v12, v13

    iput v12, v0, La/a/j;->d:I

    iget-object v12, v0, La/a/j;->c:La/b/c/ar;

    iget-object v13, v0, La/a/j;->f:Ljava/lang/String;

    invoke-virtual {v13, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, La/b/c/ar;->a(Ljava/lang/String;)La/b/c/ar;

    move-result-object v4

    const-string v12, "(Ljava/lang/String;)Ljava/lang/StringBuilder;"

    invoke-virtual {v4, v10, v11, v12}, La/b/c/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    add-int/lit8 v4, v9, -0x1

    goto :goto_df

    :pswitch_ae  #0x2
    iget-object v9, v0, La/a/j;->g:[I

    add-int/lit8 v10, v5, 0x1

    aget v5, v9, v5

    iget-object v9, v0, La/a/j;->c:La/b/c/ar;

    invoke-virtual {v9, v5}, La/b/c/ar;->h(I)La/b/c/ar;

    invoke-virtual {v1, v5, p0}, La/b/k;->a(ILa/b/b/a/f;)V

    move v5, v10

    goto :goto_df

    :pswitch_be  #0x1
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget v12, v0, La/a/j;->d:I

    invoke-static {v9}, La/a/j;->b(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v12, v13

    iput v12, v0, La/a/j;->d:I

    invoke-static {v9}, La/b/f/i;->v(Ljava/lang/String;)I

    move-result v12

    sub-int/2addr v8, v12

    iget-object v12, v0, La/a/j;->c:La/b/c/ar;

    invoke-virtual {v12, v8, v9}, La/b/c/ar;->a(ILjava/lang/String;)La/b/c/ar;

    move-result-object v12

    invoke-static {v9}, La/a/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v10, v11, v9}, La/b/c/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    :goto_df
    add-int/lit8 v4, v4, 0x1

    goto :goto_78

    :cond_e2
    invoke-virtual {v3, v10}, La/b/c/ar;->b(Ljava/lang/String;)La/b/c/ar;

    move-result-object v1

    invoke-virtual {v1}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v1

    iget v2, v0, La/a/j;->d:I

    invoke-virtual {v1, v2}, La/b/c/ar;->U(I)La/b/c/ar;

    move-result-object v1

    const-string v2, "<init>"

    const-string v4, "(I)V"

    invoke-virtual {v1, v10, v2, v4}, La/b/c/ar;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    iget-object v1, v0, La/a/j;->c:La/b/c/ar;

    invoke-virtual {v1}, La/b/c/ar;->c()[La/b/d/c;

    move-result-object v1

    invoke-virtual {v3, v1}, La/b/c/ar;->a([La/b/d/c;)La/b/c/ar;

    const-string v1, "toString"

    const-string v2, "()Ljava/lang/String;"

    invoke-virtual {v3, v10, v1, v2}, La/b/c/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    iget-object v1, v0, La/a/j;->b:La/b/c/v;

    invoke-virtual {v3}, La/b/c/ar;->c()[La/b/d/c;

    move-result-object v2

    move/from16 v5, p4

    invoke-virtual {v1, v5, v2}, La/b/c/v;->c(I[La/b/d/c;)V

    iget-object v1, v0, La/a/j;->a:La/b/d/a/d;

    if-eqz v1, :cond_122

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, La/b/d/a/d;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/b;)V

    :cond_122
    return-void

    nop

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_be  #00000001
        :pswitch_ae  #00000002
    .end packed-switch
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/c;)V
    .registers 6

    return-void
.end method
