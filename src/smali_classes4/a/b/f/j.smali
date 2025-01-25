.class public La/b/f/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Stack;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b/f/j;->a:Ljava/lang/String;

    return-void
.end method

.method private f()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, La/b/f/j;->b:I

    iput v0, p0, La/b/f/j;->c:I

    iput-boolean v0, p0, La/b/f/j;->d:Z

    iput-object v1, p0, La/b/f/j;->e:Ljava/lang/String;

    iput-object v1, p0, La/b/f/j;->f:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, La/b/f/j;->f()V

    invoke-virtual {p0}, La/b/f/j;->c()Ljava/lang/String;

    :goto_7
    invoke-virtual {p0}, La/b/f/j;->b()Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, La/b/f/j;->d()Ljava/lang/String;

    invoke-virtual {p0}, La/b/f/j;->c()Ljava/lang/String;

    goto :goto_7

    :cond_16
    invoke-direct {p0}, La/b/f/j;->f()V

    return v0
.end method

.method public b()Z
    .registers 3

    iget v0, p0, La/b/f/j;->b:I

    iget-object v1, p0, La/b/f/j;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public c()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    iget v1, p0, La/b/f/j;->b:I

    :cond_3
    :goto_3
    :sswitch_3
    iget v0, p0, La/b/f/j;->b:I

    iget-object v2, p0, La/b/f/j;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_70

    iget-object v0, p0, La/b/f/j;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/j;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/b/f/j;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_94

    :cond_1c
    :goto_1c
    iget v0, p0, La/b/f/j;->c:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, La/b/f/j;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/j;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_3

    :goto_2c
    iget-object v0, p0, La/b/f/j;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/j;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/b/f/j;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3a

    if-eq v0, v2, :cond_3

    goto :goto_2c

    :sswitch_3d
    iget v0, p0, La/b/f/j;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/b/f/j;->c:I

    iget-object v0, p0, La/b/f/j;->f:Ljava/util/Stack;

    if-nez v0, :cond_4e

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, La/b/f/j;->f:Ljava/util/Stack;

    :cond_4e
    iget-object v0, p0, La/b/f/j;->f:Ljava/util/Stack;

    iget-object v2, p0, La/b/f/j;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :sswitch_56
    iget v0, p0, La/b/f/j;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La/b/f/j;->c:I

    iget-object v0, p0, La/b/f/j;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, La/b/f/j;->e:Ljava/lang/String;

    goto :goto_3

    :sswitch_67
    iget v0, p0, La/b/f/j;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, La/b/f/j;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, La/b/f/j;->d:Z

    :cond_70
    :goto_70
    iget-object v0, p0, La/b/f/j;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/j;->b:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_79
    iget v0, p0, La/b/f/j;->c:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, La/b/f/j;->c:I

    goto :goto_1c

    :sswitch_80
    iput-boolean v4, p0, La/b/f/j;->d:Z

    goto :goto_70

    :goto_83
    :sswitch_83
    iget-object v0, p0, La/b/f/j;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/j;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, La/b/f/j;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_1c

    goto :goto_83

    :sswitch_data_94
    .sparse-switch
        0x2e -> :sswitch_80
        0x3a -> :sswitch_3
        0x3b -> :sswitch_79
        0x3c -> :sswitch_3d
        0x3e -> :sswitch_56
        0x4c -> :sswitch_67
        0x54 -> :sswitch_83
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget v0, p0, La/b/f/j;->b:I

    :goto_2
    iget-object v1, p0, La/b/f/j;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/j;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_3e

    iget v1, p0, La/b/f/j;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/b/f/j;->b:I

    goto :goto_2

    :sswitch_14
    iget-object v1, p0, La/b/f/j;->a:Ljava/lang/String;

    iget v2, p0, La/b/f/j;->b:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, La/b/f/j;->d:Z

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, La/b/f/j;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_39
    iput-object v0, p0, La/b/f/j;->e:Ljava/lang/String;

    iget-object v0, p0, La/b/f/j;->e:Ljava/lang/String;

    return-object v0

    :sswitch_data_3e
    .sparse-switch
        0x2e -> :sswitch_14
        0x3b -> :sswitch_14
        0x3c -> :sswitch_14
    .end sparse-switch
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, La/b/f/j;->d:Z

    return v0
.end method
