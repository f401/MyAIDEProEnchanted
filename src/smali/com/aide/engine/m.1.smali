.class public final enum Lcom/aide/engine/m;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .locals 20
    .annotation runtime Labcd/su;
        method = -0x69a1c4df9402e33L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/engine/m;

    const-wide v2, -0x629ab638d0393370L    # -4.512646009767288E-167

    const-wide v4, -0x629ab638d0393370L    # -4.512646009767288E-167

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/m;->QX:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xc49e8a343808480L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    const-string v3, "Plain"

    const v4, 0x7f050039

    const v5, 0x7f050038

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->j6:Lcom/aide/engine/m;

    new-instance v1, Lcom/aide/engine/m;

    const-string v2, "KEYWORD"

    const/4 v3, 0x1

    const-string v4, "Keyword"

    const v5, 0x7f050031

    const v6, 0x7f050030

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/aide/engine/m;->DW:Lcom/aide/engine/m;

    new-instance v2, Lcom/aide/engine/m;

    const-string v3, "IDENTIFIER"

    const/4 v4, 0x2

    const-string v5, "Identifier"

    const v6, 0x7f05002f

    const v7, 0x7f05002e

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/aide/engine/m;->FH:Lcom/aide/engine/m;

    new-instance v3, Lcom/aide/engine/m;

    const-string v4, "NAMESPACE_IDENTIFIER"

    const/4 v5, 0x3

    const-string v6, "Namespace/Package Identifier"

    const v7, 0x7f050037

    const v8, 0x7f050036

    const/4 v9, 0x2

    invoke-direct/range {v3 .. v9}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/aide/engine/m;->Hw:Lcom/aide/engine/m;

    new-instance v4, Lcom/aide/engine/m;

    const-string v5, "TYPE_IDENTIFIER"

    const/4 v6, 0x4

    const-string v7, "Type Identifier"

    const v8, 0x7f05003d

    const v9, 0x7f05003c

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/aide/engine/m;->v5:Lcom/aide/engine/m;

    new-instance v5, Lcom/aide/engine/m;

    const-string v6, "DELEGATE_IDENTIFIER"

    const/4 v7, 0x5

    const-string v8, "Delegate Identifier"

    const v9, 0x7f05003d

    const v10, 0x7f05003c

    const/4 v11, 0x2

    invoke-direct/range {v5 .. v11}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v5, Lcom/aide/engine/m;->Zo:Lcom/aide/engine/m;

    new-instance v6, Lcom/aide/engine/m;

    const-string v7, "OPERATOR"

    const/4 v8, 0x6

    const-string v9, "Operator"

    const v10, 0x7f050035

    const v11, 0x7f050034

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/aide/engine/m;->VH:Lcom/aide/engine/m;

    new-instance v7, Lcom/aide/engine/m;

    const-string v8, "SEPARATOR"

    const/4 v9, 0x7

    const-string v10, "Separator/Punctuator"

    const v11, 0x7f05003b

    const v12, 0x7f05003a

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/aide/engine/m;->gn:Lcom/aide/engine/m;

    new-instance v8, Lcom/aide/engine/m;

    const-string v9, "LITERAL"

    const/16 v10, 0x8

    const-string v11, "Literal"

    const v12, 0x7f050033

    const v13, 0x7f050032

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v8, Lcom/aide/engine/m;->u7:Lcom/aide/engine/m;

    new-instance v9, Lcom/aide/engine/m;

    const-string v10, "PREPROCESSOR"

    const/16 v11, 0x9

    const-string v12, "Preprocessor"

    const v13, 0x7f050039

    const v14, 0x7f050038

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v9, Lcom/aide/engine/m;->tp:Lcom/aide/engine/m;

    new-instance v10, Lcom/aide/engine/m;

    const-string v11, "COMMENT"

    const/16 v12, 0xa

    const-string v13, "Comment"

    const v14, 0x7f05002d

    const v15, 0x7f05002c

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v10, Lcom/aide/engine/m;->EQ:Lcom/aide/engine/m;

    new-instance v11, Lcom/aide/engine/m;

    const-string v12, "DOC_COMMENT"

    const/16 v13, 0xb

    const-string v14, "Documentation Comment"

    const v15, 0x7f05002d

    const v16, 0x7f05002c

    const/16 v17, 0x2

    invoke-direct/range {v11 .. v17}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v11, Lcom/aide/engine/m;->we:Lcom/aide/engine/m;

    new-instance v12, Lcom/aide/engine/m;

    const-string v13, "SCRIPT_BACKGROUND"

    const/16 v14, 0xc

    const-string v15, "Script Background"

    const v16, 0x7f050039

    const v17, 0x7f050038

    const/16 v18, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v12, Lcom/aide/engine/m;->J0:Lcom/aide/engine/m;

    new-instance v13, Lcom/aide/engine/m;

    const-string v14, "SCRIPT"

    const/16 v15, 0xd

    const-string v16, "Script"

    const v17, 0x7f050039

    const v18, 0x7f050038

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v13, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    const/16 v14, 0xe

    new-array v14, v14, [Lcom/aide/engine/m;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    const/4 v0, 0x1

    aput-object v1, v14, v0

    const/4 v0, 0x2

    aput-object v2, v14, v0

    const/4 v0, 0x3

    aput-object v3, v14, v0

    const/4 v0, 0x4

    aput-object v4, v14, v0

    const/4 v0, 0x5

    aput-object v5, v14, v0

    const/4 v0, 0x6

    aput-object v6, v14, v0

    const/4 v0, 0x7

    aput-object v7, v14, v0

    const/16 v0, 0x8

    aput-object v8, v14, v0

    const/16 v0, 0x9

    aput-object v9, v14, v0

    const/16 v0, 0xa

    aput-object v10, v14, v0

    const/16 v0, 0xb

    aput-object v11, v14, v0

    const/16 v0, 0xc

    aput-object v12, v14, v0

    const/16 v0, 0xd

    aput-object v13, v14, v0

    sput-object v14, Lcom/aide/engine/m;->Ws:[Lcom/aide/engine/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_1

    const-wide v2, -0xc49e8a343808480L

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 6
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

    if-eqz v0, :cond_0

    const-wide v0, -0x3ad9e11b66ee40L

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/aide/engine/m;->U2:Ljava/lang/String;

    iput p4, p0, Lcom/aide/engine/m;->j3:I

    iput p5, p0, Lcom/aide/engine/m;->aM:I

    iput p6, p0, Lcom/aide/engine/m;->Mr:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/engine/m;
    .locals 6

    const-wide v4, -0x330b13411665df8L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/m;->QX:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x330b13411665df8L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/engine/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/engine/m;
    .locals 6

    const-wide v4, 0x26a0b5ab74623a00L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/m;->QX:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x26a0b5ab74623a00L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/engine/m;->Ws:[Lcom/aide/engine/m;

    invoke-virtual {v0}, [Lcom/aide/engine/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/engine/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public Hw()I
    .locals 4

    const-wide v2, 0x2e8a93db981b720L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/m;->QX:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2e8a93db981b720L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/m;->Mr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/content/Context;Z)I
    .locals 3

    iget-object v0, p0, Lcom/aide/engine/m;->U2:Ljava/lang/String;

    iget v1, p0, Lcom/aide/engine/m;->j3:I

    iget v2, p0, Lcom/aide/engine/m;->aM:I

    invoke-static {v0, p2, v1, v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighLightColor(Ljava/lang/String;ZII)I

    move-result v0

    return v0
.end method
