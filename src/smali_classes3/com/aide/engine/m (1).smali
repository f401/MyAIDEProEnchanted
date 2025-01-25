.class public final enum Lcom/aide/engine/m;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aide/engine/m;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/engine/m;

.field public static final enum EQ:Lcom/aide/engine/m;

.field public static final enum FH:Lcom/aide/engine/m;

.field public static final enum Hw:Lcom/aide/engine/m;

.field public static final enum J0:Lcom/aide/engine/m;

.field public static final enum J8:Lcom/aide/engine/m;

.field private static QX:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum VH:Lcom/aide/engine/m;

.field private static final Ws:[Lcom/aide/engine/m;

.field private static XL:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum Zo:Lcom/aide/engine/m;

.field public static final enum gn:Lcom/aide/engine/m;

.field public static final enum j6:Lcom/aide/engine/m;

.field public static final enum tp:Lcom/aide/engine/m;

.field public static final enum u7:Lcom/aide/engine/m;

.field public static final enum v5:Lcom/aide/engine/m;

.field public static final enum we:Lcom/aide/engine/m;


# instance fields
.field private final Mr:I
    .annotation runtime Labcd/ru;
        field = 0x4e736800e64afd0L
    .end annotation
.end field

.field private final U2:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x17189da970a85471L
    .end annotation
.end field

.field private final aM:I
    .annotation runtime Labcd/ru;
        field = 0x20bfcd2ca1a3f820L
    .end annotation
.end field

.field private final j3:I
    .annotation runtime Labcd/ru;
        field = 0x89d7d6e348aa9b0L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 36
    .annotation runtime Labcd/su;
        method = -0x69a1c4df9402e33L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, -0xc49e8a343808480L

    :try_start_6
    const-class v0, Lcom/aide/engine/m;

    const-wide v4, -0x629ab638d0393370L  # -4.512646009767288E-167

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/m;->QX:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Lcom/aide/engine/m;

    const-string v5, "PLAIN"

    const/4 v6, 0x0

    const-string v7, "Plain"

    const v8, 0x7f050039

    const v9, 0x7f050038

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->j6:Lcom/aide/engine/m;

    new-instance v4, Lcom/aide/engine/m;

    const-string v12, "KEYWORD"

    const/4 v13, 0x1

    const-string v14, "Keyword"

    const v15, 0x7f050031

    const v16, 0x7f050030

    const/16 v17, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/aide/engine/m;->DW:Lcom/aide/engine/m;

    new-instance v12, Lcom/aide/engine/m;

    const-string v6, "IDENTIFIER"

    const/4 v7, 0x2

    const-string v8, "Identifier"

    const v9, 0x7f05002f

    const v10, 0x7f05002e

    const/4 v11, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v12, Lcom/aide/engine/m;->FH:Lcom/aide/engine/m;

    new-instance v5, Lcom/aide/engine/m;

    const-string v14, "NAMESPACE_IDENTIFIER"

    const/4 v15, 0x3

    const-string v16, "Namespace/Package Identifier"

    const v17, 0x7f050037

    const v18, 0x7f050036

    const/16 v19, 0x2

    move-object v13, v5

    invoke-direct/range {v13 .. v19}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v5, Lcom/aide/engine/m;->Hw:Lcom/aide/engine/m;

    new-instance v6, Lcom/aide/engine/m;

    const-string v21, "TYPE_IDENTIFIER"

    const/16 v22, 0x4

    const-string v23, "Type Identifier"

    const v24, 0x7f05003d

    const v25, 0x7f05003c

    const/16 v26, 0x0

    move-object/from16 v20, v6

    invoke-direct/range {v20 .. v26}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/aide/engine/m;->v5:Lcom/aide/engine/m;

    new-instance v7, Lcom/aide/engine/m;

    const-string v14, "DELEGATE_IDENTIFIER"

    const/4 v15, 0x5

    const-string v16, "Delegate Identifier"

    const v17, 0x7f05003d

    const v18, 0x7f05003c

    const/16 v19, 0x2

    move-object v13, v7

    invoke-direct/range {v13 .. v19}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/aide/engine/m;->Zo:Lcom/aide/engine/m;

    new-instance v8, Lcom/aide/engine/m;

    const-string v21, "OPERATOR"

    const/16 v22, 0x6

    const-string v23, "Operator"

    const v24, 0x7f050035

    const v25, 0x7f050034

    const/16 v26, 0x0

    move-object/from16 v20, v8

    invoke-direct/range {v20 .. v26}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v8, Lcom/aide/engine/m;->VH:Lcom/aide/engine/m;

    new-instance v9, Lcom/aide/engine/m;

    const-string v14, "SEPARATOR"

    const/4 v15, 0x7

    const-string v16, "Separator/Punctuator"

    const v17, 0x7f05003b

    const v18, 0x7f05003a

    const/16 v19, 0x0

    move-object v13, v9

    invoke-direct/range {v13 .. v19}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v9, Lcom/aide/engine/m;->gn:Lcom/aide/engine/m;

    new-instance v10, Lcom/aide/engine/m;

    const-string v21, "LITERAL"

    const/16 v22, 0x8

    const-string v23, "Literal"

    const v24, 0x7f050033

    const v25, 0x7f050032

    const/16 v26, 0x0

    move-object/from16 v20, v10

    invoke-direct/range {v20 .. v26}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v10, Lcom/aide/engine/m;->u7:Lcom/aide/engine/m;

    new-instance v11, Lcom/aide/engine/m;

    const-string v14, "PREPROCESSOR"

    const/16 v15, 0x9

    const-string v16, "Preprocessor"

    const v17, 0x7f050039

    const v18, 0x7f050038

    const/16 v19, 0x0

    move-object v13, v11

    invoke-direct/range {v13 .. v19}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v11, Lcom/aide/engine/m;->tp:Lcom/aide/engine/m;

    new-instance v13, Lcom/aide/engine/m;

    const-string v21, "COMMENT"

    const/16 v22, 0xa

    const-string v23, "Comment"

    const v24, 0x7f05002d

    const v25, 0x7f05002c

    const/16 v26, 0x0

    move-object/from16 v20, v13

    invoke-direct/range {v20 .. v26}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v13, Lcom/aide/engine/m;->EQ:Lcom/aide/engine/m;

    new-instance v21, Lcom/aide/engine/m;

    const-string v15, "DOC_COMMENT"

    const/16 v16, 0xb

    const-string v17, "Documentation Comment"

    const v18, 0x7f05002d

    const v19, 0x7f05002c

    const/16 v20, 0x2

    move-object/from16 v14, v21

    invoke-direct/range {v14 .. v20}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v21, Lcom/aide/engine/m;->we:Lcom/aide/engine/m;

    new-instance v14, Lcom/aide/engine/m;

    const-string v23, "SCRIPT_BACKGROUND"

    const/16 v24, 0xc

    const-string v25, "Script Background"

    const v26, 0x7f050039

    const v27, 0x7f050038

    const/16 v28, 0x0

    move-object/from16 v22, v14

    invoke-direct/range {v22 .. v28}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v14, Lcom/aide/engine/m;->J0:Lcom/aide/engine/m;

    new-instance v15, Lcom/aide/engine/m;

    const-string v30, "SCRIPT"

    const/16 v31, 0xd

    const-string v32, "Script"

    const v33, 0x7f050039

    const v34, 0x7f050038

    const/16 v35, 0x0

    move-object/from16 v29, v15

    invoke-direct/range {v29 .. v35}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v15, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    const/16 v1, 0xe

    new-array v1, v1, [Lcom/aide/engine/m;

    const/16 v17, 0x0

    aput-object v0, v1, v17

    const/4 v0, 0x1

    aput-object v4, v1, v0

    const/4 v0, 0x2

    aput-object v12, v1, v0

    const/4 v0, 0x3

    aput-object v5, v1, v0

    const/4 v0, 0x4

    aput-object v6, v1, v0

    const/4 v0, 0x5

    aput-object v7, v1, v0

    const/4 v0, 0x6

    aput-object v8, v1, v0

    const/4 v0, 0x7

    aput-object v9, v1, v0

    const/16 v0, 0x8

    aput-object v10, v1, v0

    const/16 v0, 0x9

    aput-object v11, v1, v0

    const/16 v0, 0xa

    aput-object v13, v1, v0

    const/16 v0, 0xb

    aput-object v21, v1, v0

    const/16 v0, 0xc

    aput-object v14, v1, v0

    const/16 v0, 0xd

    aput-object v15, v1, v0

    sput-object v1, Lcom/aide/engine/m;->Ws:[Lcom/aide/engine/m;
    :try_end_181
    .catchall {:try_start_6 .. :try_end_181} :catchall_182

    return-void

    :catchall_182
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_18b

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_18b
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 11
    .annotation runtime Labcd/su;
        method = -0x5d43cd5036c3e2b8L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    sget-boolean v0, Lcom/aide/engine/m;->QX:Z

    if-eqz v0, :cond_36

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-wide v1, -0x3ad9e11b66ee40L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/engine/m;->U2:Ljava/lang/String;

    iput p4, p0, Lcom/aide/engine/m;->j3:I

    iput p5, p0, Lcom/aide/engine/m;->aM:I

    iput p6, p0, Lcom/aide/engine/m;->Mr:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/engine/m;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, -0x330b13411665df8L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/m;->QX:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/engine/m;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/engine/m;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/m;->XL:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/engine/m;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, 0x26a0b5ab74623a00L

    :try_start_6
    sget-boolean v3, Lcom/aide/engine/m;->QX:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/engine/m;->Ws:[Lcom/aide/engine/m;

    invoke-virtual {v3}, [Lcom/aide/engine/m;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/engine/m;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/engine/m;->XL:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public Hw()I
    .registers 5

    const-wide v0, 0x2e8a93db981b720L

    :try_start_5
    sget-boolean v2, Lcom/aide/engine/m;->QX:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget v0, p0, Lcom/aide/engine/m;->Mr:I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Lcom/aide/engine/m;->XL:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method

.method public j6(Landroid/content/Context;Z)I
    .registers 5

    iget-object p1, p0, Lcom/aide/engine/m;->U2:Ljava/lang/String;

    iget v0, p0, Lcom/aide/engine/m;->j3:I

    iget v1, p0, Lcom/aide/engine/m;->aM:I

    invoke-static {p1, p2, v0, v1}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighLightColor(Ljava/lang/String;ZII)I

    move-result p1

    return p1
.end method
