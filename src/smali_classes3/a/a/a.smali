.class public La/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:La/h;


# direct methods
.method public constructor <init>(La/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a;->a:La/h;

    return-void
.end method


# virtual methods
.method public a(La/b/b;La/b/b;La/j/n;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget-object v1, v0, La/a/a;->a:La/h;

    iget v9, v1, La/h;->g:I

    iget-object v1, v0, La/a/a;->a:La/h;

    iget-boolean v1, v1, La/h;->R:Z

    if-eqz v1, :cond_15

    const-string v1, "Backporting class files..."

    invoke-static {v1}, La/j/l;->a(Ljava/lang/String;)V

    :cond_15
    new-instance v1, La/b/g/g;

    invoke-direct {v1}, La/b/g/g;-><init>()V

    invoke-virtual {v7, v1}, La/b/b;->a(La/b/g/s;)V

    new-instance v1, La/b/g/g;

    invoke-direct {v1}, La/b/g/g;-><init>()V

    invoke-virtual {v8, v1}, La/b/b;->a(La/b/g/s;)V

    new-instance v10, La/b/d/a/c;

    invoke-direct {v10}, La/b/d/a/c;-><init>()V

    new-instance v11, La/b/g/i;

    invoke-direct {v11}, La/b/g/i;-><init>()V

    new-instance v12, La/b/g/al;

    invoke-direct {v12}, La/b/g/al;-><init>()V

    new-instance v13, La/b/g/al;

    invoke-direct {v13}, La/b/g/al;-><init>()V

    new-instance v14, La/b/d/a/c;

    invoke-direct {v14}, La/b/d/a/c;-><init>()V

    const/4 v1, 0x3

    const-string v2, "BootstrapMethods"

    const/high16 v3, 0x350000

    const/4 v5, 0x1

    if-ge v9, v3, :cond_9b

    new-instance v4, La/b/c/v;

    invoke-direct {v4, v5, v5}, La/b/c/v;-><init>(ZZ)V

    new-instance v3, La/b/g/q;

    new-instance v15, La/b/a/d/a;

    new-instance v5, La/b/a/d/g;

    new-instance v6, La/b/a/d/h;

    new-instance v0, La/b/g/at;

    move-object/from16 v19, v14

    new-array v14, v1, [La/b/g/s;

    new-instance v1, La/b/g/d;

    move-object/from16 v20, v13

    new-instance v13, La/b/a/d/a;

    move-object/from16 v21, v12

    new-instance v12, La/g/c/v;

    move-object/from16 v22, v11

    new-instance v11, La/a/j;

    invoke-direct {v11, v10, v4}, La/a/j;-><init>(La/b/d/a/d;La/b/c/v;)V

    invoke-direct {v12, v4, v11}, La/g/c/v;-><init>(La/b/c/v;La/b/d/a/d;)V

    invoke-direct {v13, v12}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v1, v13}, La/b/g/d;-><init>(La/b/g/aq;)V

    const/4 v4, 0x0

    aput-object v1, v14, v4

    new-instance v1, La/b/c/o;

    invoke-direct {v1}, La/b/c/o;-><init>()V

    const/4 v4, 0x1

    aput-object v1, v14, v4

    new-instance v1, La/b/f/f;

    invoke-direct {v1, v7, v8}, La/b/f/f;-><init>(La/b/b;La/b/b;)V

    const/4 v4, 0x2

    aput-object v1, v14, v4

    invoke-direct {v0, v14}, La/b/g/at;-><init>([La/b/g/s;)V

    invoke-direct {v6, v0}, La/b/a/d/h;-><init>(La/b/g/s;)V

    invoke-direct {v5, v2, v6}, La/b/a/d/g;-><init>(Ljava/lang/String;La/b/a/d/i;)V

    invoke-direct {v15, v5}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    const/high16 v0, 0x350000

    invoke-direct {v3, v0, v15}, La/b/g/q;-><init>(ILa/b/g/s;)V

    invoke-virtual {v7, v3}, La/b/b;->a(La/b/g/s;)V

    goto :goto_a3

    :cond_9b
    move-object/from16 v22, v11

    move-object/from16 v21, v12

    move-object/from16 v20, v13

    move-object/from16 v19, v14

    :goto_a3
    const/high16 v0, 0x340000

    if-ge v9, v0, :cond_147

    new-instance v1, La/b/b;

    invoke-direct {v1}, La/b/b;-><init>()V

    new-instance v3, La/b/g/q;

    new-instance v4, La/b/a/d/a;

    new-instance v5, La/b/a/d/g;

    new-instance v6, La/b/a/d/h;

    new-instance v11, La/b/g/m;

    invoke-direct {v11, v1}, La/b/g/m;-><init>(La/b/b;)V

    invoke-direct {v6, v11}, La/b/a/d/h;-><init>(La/b/g/s;)V

    invoke-direct {v5, v2, v6}, La/b/a/d/g;-><init>(Ljava/lang/String;La/b/a/d/i;)V

    invoke-direct {v4, v5}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v3, v0, v4}, La/b/g/q;-><init>(ILa/b/g/s;)V

    invoke-virtual {v7, v3}, La/b/b;->a(La/b/g/s;)V

    new-instance v2, La/b/g/at;

    const/4 v3, 0x3

    new-array v3, v3, [La/b/g/s;

    new-instance v4, La/a/g;

    move-object/from16 v5, p3

    move-object/from16 v11, v22

    invoke-direct {v4, v7, v8, v5, v11}, La/a/g;-><init>(La/b/b;La/b/b;La/j/n;La/b/g/s;)V

    const/4 v6, 0x0

    aput-object v4, v3, v6

    new-instance v4, La/b/c/o;

    invoke-direct {v4}, La/b/c/o;-><init>()V

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-instance v4, La/b/f/f;

    invoke-direct {v4, v7, v8}, La/b/f/f;-><init>(La/b/b;La/b/b;)V

    const/4 v12, 0x2

    aput-object v4, v3, v12

    invoke-direct {v2, v3}, La/b/g/at;-><init>([La/b/g/s;)V

    invoke-virtual {v1, v2}, La/b/b;->a(La/b/g/s;)V

    new-instance v12, La/b/b;

    invoke-direct {v12}, La/b/b;-><init>()V

    new-instance v1, La/b/g/q;

    new-instance v2, La/b/g/f;

    new-instance v3, La/b/g/m;

    invoke-direct {v3, v12}, La/b/g/m;-><init>(La/b/b;)V

    const/16 v4, 0x200

    const/4 v13, 0x0

    invoke-direct {v2, v4, v13, v3}, La/b/g/f;-><init>(IILa/b/g/s;)V

    invoke-direct {v1, v0, v2}, La/b/g/q;-><init>(ILa/b/g/s;)V

    invoke-virtual {v7, v1}, La/b/b;->a(La/b/g/s;)V

    new-instance v0, La/b/b;

    invoke-direct {v0}, La/b/b;-><init>()V

    new-instance v14, La/b/g/m;

    invoke-direct {v14, v0}, La/b/g/m;-><init>(La/b/b;)V

    new-instance v15, La/b/g/at;

    const/4 v1, 0x2

    new-array v4, v1, [La/b/g/s;

    new-instance v16, La/a/h;

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v13, v4

    move-object/from16 v4, p3

    const/16 v17, 0x1

    move-object v5, v14

    const/16 v18, 0x0

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, La/a/h;-><init>(La/b/b;La/b/b;La/j/n;La/b/g/s;La/b/g/aq;)V

    aput-object v16, v13, v18

    new-instance v1, La/a/b;

    move-object/from16 v6, v20

    invoke-direct {v1, v14, v6}, La/a/b;-><init>(La/b/g/s;La/b/g/aq;)V

    aput-object v1, v13, v17

    invoke-direct {v15, v13}, La/b/g/at;-><init>([La/b/g/s;)V

    invoke-virtual {v12, v15}, La/b/b;->a(La/b/g/s;)V

    new-instance v1, La/b/f/f;

    invoke-direct {v1, v7, v8}, La/b/f/f;-><init>(La/b/b;La/b/b;)V

    invoke-virtual {v0, v1}, La/b/b;->a(La/b/g/s;)V

    goto :goto_14f

    :cond_147
    move-object/from16 v6, v20

    move-object/from16 v11, v22

    const/16 v17, 0x1

    const/16 v18, 0x0

    :goto_14f
    const/high16 v0, 0x330000

    if-ge v9, v0, :cond_1d4

    new-instance v0, La/b/c/ar;

    invoke-direct {v0, v7, v8}, La/b/c/ar;-><init>(La/b/b;La/b/b;)V

    const/4 v1, 0x2

    new-array v2, v1, [[La/b/d/c;

    const-string v1, "requireNonNull"

    const-string v3, "(Ljava/lang/Object;)Ljava/lang/Object;"

    const-string v4, "java/util/Objects"

    invoke-virtual {v0, v4, v1, v3}, La/b/c/ar;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    move-result-object v1

    invoke-virtual {v1}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v1

    aput-object v1, v2, v18

    invoke-virtual {v0}, La/b/c/ar;->D()La/b/c/ar;

    move-result-object v1

    const-string v3, "getClass"

    const-string v4, "()Ljava/lang/Class;"

    const-string v5, "java/lang/Object"

    invoke-virtual {v1, v5, v3, v4}, La/b/c/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    move-result-object v1

    invoke-virtual {v1}, La/b/c/ar;->B()La/b/c/ar;

    move-result-object v1

    invoke-virtual {v1}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v1

    aput-object v1, v2, v17

    const-string v1, "addSuppressed"

    const-string v3, "(Ljava/lang/Throwable;)V"

    const-string v4, "java/util/Throwable"

    invoke-virtual {v0, v4, v1, v3}, La/b/c/ar;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)La/b/c/ar;

    move-result-object v1

    invoke-virtual {v1}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v1

    invoke-virtual {v0}, La/b/c/ar;->B()La/b/c/ar;

    move-result-object v3

    invoke-virtual {v3}, La/b/c/ar;->B()La/b/c/ar;

    move-result-object v3

    invoke-virtual {v3}, La/b/c/ar;->b()[La/b/d/c;

    move-result-object v3

    invoke-virtual {v0}, La/b/c/ar;->d()[La/b/b/b;

    move-result-object v0

    new-instance v8, La/b/c/v;

    invoke-direct {v8}, La/b/c/v;-><init>()V

    new-instance v12, La/b/g/d;

    new-instance v13, La/b/a/d/a;

    new-instance v14, La/g/c/v;

    new-instance v15, La/g/c/p;

    const/4 v4, 0x2

    new-array v5, v4, [[[La/b/d/c;

    aput-object v2, v5, v18

    new-array v2, v4, [[La/b/d/c;

    aput-object v1, v2, v18

    aput-object v3, v2, v17

    aput-object v2, v5, v17

    const/4 v4, 0x0

    move-object v1, v15

    move-object v2, v0

    move-object v3, v5

    move-object v5, v8

    move-object v0, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, La/g/c/p;-><init>([La/b/b/b;[[[La/b/d/c;La/g/c/a;La/b/c/v;La/b/d/a/d;)V

    const/4 v1, 0x0

    invoke-direct {v14, v1, v8, v15}, La/g/c/v;-><init>(La/g/c/a;La/b/c/v;La/b/d/a/d;)V

    invoke-direct {v13, v14}, La/b/a/d/a;-><init>(La/b/a/d/i;)V

    invoke-direct {v12, v13}, La/b/g/d;-><init>(La/b/g/aq;)V

    invoke-virtual {v7, v12}, La/b/b;->a(La/b/g/s;)V

    goto :goto_1d5

    :cond_1d4
    move-object v0, v6

    :goto_1d5
    if-eqz v9, :cond_1df

    new-instance v1, La/b/g/r;

    invoke-direct {v1, v9}, La/b/g/r;-><init>(I)V

    invoke-virtual {v7, v1}, La/b/b;->a(La/b/g/s;)V

    :cond_1df
    move-object/from16 v1, p0

    iget-object v2, v1, La/a/a;->a:La/h;

    iget-boolean v2, v2, La/h;->R:Z

    if-eqz v2, :cond_269

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of converted string concatenations:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, La/b/d/a/c;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of converted lambda expressions:        "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, La/b/g/i;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of converted static interface methods:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, La/b/g/al;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of converted default interface methods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, La/b/g/al;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Number of replaced Java 7+ method calls:       "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {v19 .. v19}, La/b/d/a/c;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j/l;->a(Ljava/lang/String;)V

    :cond_269
    return-void
.end method
