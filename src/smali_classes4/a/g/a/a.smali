.class public La/g/a/a;
.super La/b/f/w;

# interfaces
.implements La/b/a/d/i;
.implements La/b/a/d/l;


# instance fields
.field private final a:La/g/a/j;

.field private final b:Z

.field private final c:La/b/d/a/d;

.field private final d:La/b/d/a/d;

.field private final e:La/g/a/g;

.field private final f:La/g/a/c;

.field private final g:La/g/a/e;

.field private final h:La/g/a/f;

.field private final i:La/g/a/d;

.field private final j:La/b/c/v;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    new-instance v0, La/g/a/v;

    invoke-direct {v0}, La/g/a/v;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2, v2}, La/g/a/a;-><init>(La/g/a/v;ZLa/b/d/a/d;La/b/d/a/d;)V

    return-void
.end method

.method public constructor <init>(La/g/a/j;ZLa/b/d/a/d;La/b/d/a/d;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct {p0}, La/b/f/w;-><init>()V

    new-instance v0, La/g/a/g;

    invoke-direct {v0, p0, v1}, La/g/a/g;-><init>(La/g/a/a;La/g/a/b;)V

    iput-object v0, p0, La/g/a/a;->e:La/g/a/g;

    new-instance v0, La/g/a/c;

    invoke-direct {v0, p0, v1}, La/g/a/c;-><init>(La/g/a/a;La/g/a/b;)V

    iput-object v0, p0, La/g/a/a;->f:La/g/a/c;

    new-instance v0, La/g/a/e;

    invoke-direct {v0, p0, v1}, La/g/a/e;-><init>(La/g/a/a;La/g/a/b;)V

    iput-object v0, p0, La/g/a/a;->g:La/g/a/e;

    new-instance v0, La/g/a/f;

    invoke-direct {v0, p0, v1}, La/g/a/f;-><init>(La/g/a/a;La/g/a/b;)V

    iput-object v0, p0, La/g/a/a;->h:La/g/a/f;

    new-instance v0, La/g/a/d;

    invoke-direct {v0, p0, v1}, La/g/a/d;-><init>(La/g/a/a;La/g/a/b;)V

    iput-object v0, p0, La/g/a/a;->i:La/g/a/d;

    new-instance v0, La/b/c/v;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, La/b/c/v;-><init>(ZZ)V

    iput-object v0, p0, La/g/a/a;->j:La/b/c/v;

    iput-object p1, p0, La/g/a/a;->a:La/g/a/j;

    iput-boolean p2, p0, La/g/a/a;->b:Z

    iput-object p3, p0, La/g/a/a;->c:La/b/d/a/d;

    iput-object p4, p0, La/g/a/a;->d:La/b/d/a/d;

    return-void
.end method

.method public constructor <init>(La/g/a/v;ZLa/b/d/a/d;La/b/d/a/d;)V
    .registers 7

    new-instance v0, La/g/a/j;

    invoke-direct {v0, p1, p2}, La/g/a/j;-><init>(La/g/a/v;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p3, p4}, La/g/a/a;-><init>(La/g/a/j;ZLa/b/d/a/d;La/b/d/a/d;)V

    return-void
.end method

.method private a(I)B
    .registers 5

    packed-switch p1, :pswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No push opcode for computational type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22  #0x1
    const/4 v0, 0x3

    :goto_23
    return v0

    :pswitch_24  #0x2
    const/16 v0, 0x9

    goto :goto_23

    :pswitch_27  #0x3
    const/16 v0, 0xb

    goto :goto_23

    :pswitch_2a  #0x4
    const/16 v0, 0xe

    goto :goto_23

    :pswitch_2d  #0x5, 0x6
    const/4 v0, 0x1

    goto :goto_23

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_22  #00000001
        :pswitch_24  #00000002
        :pswitch_27  #00000003
        :pswitch_2a  #00000004
        :pswitch_2d  #00000005
        :pswitch_2d  #00000006
    .end packed-switch
.end method

.method static synthetic a(La/g/a/a;)La/g/a/j;
    .registers 2

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    return-object v0
.end method

.method private a(IZZI)V
    .registers 7

    new-instance v0, La/b/d/h;

    invoke-direct {p0, p4}, La/g/a/a;->a(I)B

    move-result v1

    invoke-direct {v0, v1}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/a;->a(IZZLa/b/d/c;)V

    return-void
.end method

.method private a(IZZLa/b/d/c;)V
    .registers 11

    const/4 v1, 0x0

    if-eqz p2, :cond_1e

    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v0, p1, p4}, La/b/c/v;->b(ILa/b/d/c;)V

    iget-object v0, p0, La/g/a/a;->d:La/b/d/a/d;

    if-eqz v0, :cond_1d

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    invoke-virtual {v0, p1}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v5, p0, La/g/a/a;->d:La/b/d/a/d;

    move-object v0, p4

    move-object v2, v1

    move-object v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    if-eqz p3, :cond_33

    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v0, p1, p4}, La/b/c/v;->a(ILa/b/d/c;)V

    :goto_25
    iget-object v0, p0, La/g/a/a;->d:La/b/d/a/d;

    if-eqz v0, :cond_1d

    iget-object v5, p0, La/g/a/a;->d:La/b/d/a/d;

    move-object v0, p4

    move-object v2, v1

    move-object v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    goto :goto_1d

    :cond_33
    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v0, p1, p4}, La/b/c/v;->c(ILa/b/d/c;)V

    goto :goto_25
.end method

.method private a(IZZLa/b/d/c;[La/b/d/c;)V
    .registers 13

    const/4 v1, 0x0

    if-eqz p2, :cond_30

    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v0, p1, p5}, La/b/c/v;->c(I[La/b/d/c;)V

    iget-object v0, p0, La/g/a/a;->d:La/b/d/a/d;

    if-eqz v0, :cond_54

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    invoke-virtual {v0, p1}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v5, p0, La/g/a/a;->d:La/b/d/a/d;

    move-object v0, p4

    move-object v2, v1

    move-object v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_1d
    const/4 v0, 0x1

    move v6, v0

    :goto_1f
    array-length v0, p5

    if-ge v6, v0, :cond_54

    aget-object v0, p5, v6

    iget-object v5, p0, La/g/a/a;->d:La/b/d/a/d;

    move-object v2, v1

    move-object v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1f

    :cond_30
    if-eqz p3, :cond_4e

    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v0, p1, p5}, La/b/c/v;->b(I[La/b/d/c;)V

    :goto_37
    const/4 v0, 0x0

    move v6, v0

    :goto_39
    array-length v0, p5

    if-ge v6, v0, :cond_54

    iget-object v0, p0, La/g/a/a;->d:La/b/d/a/d;

    if-eqz v0, :cond_4a

    aget-object v0, p5, v6

    iget-object v5, p0, La/g/a/a;->d:La/b/d/a/d;

    move-object v2, v1

    move-object v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, La/b/d/c;->a(La/b/c;La/b/j;La/b/a/d;ILa/b/d/a/d;)V

    :cond_4a
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_39

    :cond_4e
    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v0, p1, p5}, La/b/c/v;->d(I[La/b/d/c;)V

    goto :goto_37

    :cond_54
    return-void
.end method

.method private a(La/b/c;I)V
    .registers 6

    new-instance v0, La/b/d/a;

    const/16 v1, -0x59

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La/b/d/a;-><init>(BI)V

    iget-object v1, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v1, p2, v0}, La/b/c/v;->b(ILa/b/d/c;)V

    return-void
.end method

.method private a(La/b/c;ILa/b/d/b;)V
    .registers 7

    new-instance v0, La/b/d/b;

    const/16 v1, -0x48

    iget v2, p3, La/b/d/b;->a:I

    invoke-direct {v0, v1, v2}, La/b/d/b;-><init>(BI)V

    iget-object v1, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v1, p2, v0}, La/b/c/v;->b(ILa/b/d/c;)V

    return-void
.end method

.method static synthetic a(La/g/a/a;IZZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, La/g/a/a;->b(IZZI)V

    return-void
.end method

.method static synthetic a(La/g/a/a;La/b/c;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, La/g/a/a;->a(La/b/c;I)V

    return-void
.end method

.method static synthetic a(La/g/a/a;La/b/c;ILa/b/d/b;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, La/g/a/a;->a(La/b/c;ILa/b/d/b;)V

    return-void
.end method

.method private a(II)Z
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_23

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    invoke-virtual {v0, p1}, La/g/a/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    invoke-virtual {v0, p1}, La/g/a/j;->b(I)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    invoke-virtual {v0, p1}, La/g/a/j;->f(I)La/d/a/ad;

    move-result-object v0

    invoke-direct {p0, v0, p2}, La/g/a/a;->a(La/d/a/ad;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_23
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private a(La/d/a/ad;I)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {p1}, La/d/a/ad;->e()I

    move-result v2

    if-lez v2, :cond_13

    move v1, v0

    :goto_a
    if-ge v1, v2, :cond_13

    invoke-virtual {p1, v1}, La/d/a/ad;->a(I)I

    move-result v3

    if-le v3, p2, :cond_14

    const/4 v0, 0x1

    :cond_13
    return v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method static synthetic a(La/g/a/a;II)Z
    .registers 4

    invoke-direct {p0, p1, p2}, La/g/a/a;->a(II)Z

    move-result v0

    return v0
.end method

.method static synthetic b(La/g/a/a;)La/b/c/v;
    .registers 2

    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    return-object v0
.end method

.method private b(IZZI)V
    .registers 11

    const/16 v3, 0x58

    const/16 v2, 0x57

    packed-switch p4, :pswitch_data_46

    div-int/lit8 v0, p4, 0x2

    rem-int/lit8 v1, p4, 0x2

    add-int/2addr v0, v1

    new-array v5, v0, [La/b/d/c;

    new-instance v4, La/b/d/h;

    invoke-direct {v4, v3}, La/b/d/h;-><init>(B)V

    const/4 v0, 0x0

    :goto_14
    div-int/lit8 v1, p4, 0x2

    if-ge v0, v1, :cond_2f

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :pswitch_1d  #0x1
    new-instance v0, La/b/d/h;

    invoke-direct {v0, v2}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/a;->a(IZZLa/b/d/c;)V

    :goto_25
    return-void

    :pswitch_26  #0x2
    new-instance v0, La/b/d/h;

    invoke-direct {v0, v3}, La/b/d/h;-><init>(B)V

    invoke-direct {p0, p1, p2, p3, v0}, La/g/a/a;->a(IZZLa/b/d/c;)V

    goto :goto_25

    :cond_2f
    rem-int/lit8 v0, p4, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    new-instance v4, La/b/d/h;

    invoke-direct {v4, v2}, La/b/d/h;-><init>(B)V

    div-int/lit8 v0, p4, 0x2

    aput-object v4, v5, v0

    :cond_3d
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, La/g/a/a;->a(IZZLa/b/d/c;[La/b/d/c;)V

    goto :goto_25

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_26  #00000002
    .end packed-switch
.end method

.method static synthetic b(La/g/a/a;IZZI)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, La/g/a/a;->a(IZZI)V

    return-void
.end method

.method static synthetic c(La/g/a/a;)La/b/d/a/d;
    .registers 2

    iget-object v0, p0, La/g/a/a;->c:La/b/d/a/d;

    return-object v0
.end method


# virtual methods
.method public a(La/b/c;La/b/a/a;)V
    .registers 3

    return-void
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;)V
    .registers 7

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, La/g/a/a;->b(La/b/c;La/b/j;La/b/a/d;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string v1, "Unexpected error while shrinking instructions after partial evaluation:"

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Class       = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, La/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Method      = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->a(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, p1}, La/b/j;->b(La/b/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Exception   = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string v0, "Not optimizing this method"

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public a(La/b/c;La/b/j;La/b/a/d;La/b/a/h;)V
    .registers 7

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    iget v1, p4, La/b/a/h;->c:I

    invoke-virtual {v0, v1}, La/g/a/j;->a(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, p4, La/b/a/h;->a:I

    iput v0, p4, La/b/a/h;->b:I

    :cond_e
    return-void
.end method

.method public b(La/b/c;La/b/j;La/b/a/d;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v0, p0, La/g/a/a;->b:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    invoke-virtual {v0, p1, p2, p3}, La/g/a/j;->a(La/b/c;La/b/j;La/b/a/d;)V

    :cond_b
    iget v0, p3, La/b/a/d;->e:I

    iget-object v1, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v1, v0}, La/b/c/v;->a(I)V

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    iget-object v1, p0, La/g/a/a;->e:La/g/a/g;

    invoke-virtual {v0, v3, v1}, La/g/a/j;->b(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    iget-object v1, p0, La/g/a/a;->a:La/g/a/j;

    iget-object v2, p0, La/g/a/a;->f:La/g/a/c;

    invoke-virtual {v1, v4, v2}, La/g/a/j;->b(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, La/g/a/j;->a(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    iget-object v1, p0, La/g/a/a;->g:La/g/a/e;

    invoke-virtual {v0, v3, v1}, La/g/a/j;->b(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    iget-object v1, p0, La/g/a/a;->h:La/g/a/f;

    invoke-virtual {v0, v3, v1}, La/g/a/j;->a(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    iget-object v0, p0, La/g/a/a;->a:La/g/a/j;

    iget-object v1, p0, La/g/a/a;->i:La/g/a/d;

    invoke-virtual {v0, v4, v1}, La/g/a/j;->b(ZLa/b/d/a/d;)La/b/d/a/d;

    move-result-object v0

    invoke-virtual {p3, p1, p2, v0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/d/a/d;)V

    invoke-virtual {p3, p1, p2, p0}, La/b/a/d;->a(La/b/c;La/b/j;La/b/a/d/l;)V

    iget-object v0, p0, La/g/a/a;->j:La/b/c/v;

    invoke-virtual {v0, p1, p2, p3}, La/b/c/v;->a(La/b/c;La/b/j;La/b/a/d;)V

    return-void
.end method
