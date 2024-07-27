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
    .registers 7
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

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "KEYWORD"

    const/4 v2, 0x1

    const-string v3, "Keyword"

    const v4, 0x7f050031

    const v5, 0x7f050030

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->DW:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "IDENTIFIER"

    const/4 v2, 0x2

    const-string v3, "Identifier"

    const v4, 0x7f05002f

    const v5, 0x7f05002e

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->FH:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "NAMESPACE_IDENTIFIER"

    const/4 v2, 0x3

    const-string v3, "Namespace/Package Identifier"

    const v4, 0x7f050037

    const v5, 0x7f050036

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->Hw:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "TYPE_IDENTIFIER"

    const/4 v2, 0x4

    const-string v3, "Type Identifier"

    const v4, 0x7f05003d

    const v5, 0x7f05003c

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->v5:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "DELEGATE_IDENTIFIER"

    const/4 v2, 0x5

    const-string v3, "Delegate Identifier"

    const v4, 0x7f05003d

    const v5, 0x7f05003c

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->Zo:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "OPERATOR"

    const/4 v2, 0x6

    const-string v3, "Operator"

    const v4, 0x7f050035

    const v5, 0x7f050034

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->VH:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "SEPARATOR"

    const/4 v2, 0x7

    const-string v3, "Separator/Punctuator"

    const v4, 0x7f05003b

    const v5, 0x7f05003a

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->gn:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "LITERAL"

    const/16 v2, 0x8

    const-string v3, "Literal"

    const v4, 0x7f050033

    const v5, 0x7f050032

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->u7:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "PREPROCESSOR"

    const/16 v2, 0x9

    const-string v3, "Preprocessor"

    const v4, 0x7f050039

    const v5, 0x7f050038

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->tp:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "COMMENT"

    const/16 v2, 0xa

    const-string v3, "Comment"

    const v4, 0x7f05002d

    const v5, 0x7f05002c

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->EQ:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "DOC_COMMENT"

    const/16 v2, 0xb

    const-string v3, "Documentation Comment"

    const v4, 0x7f05002d

    const v5, 0x7f05002c

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->we:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "SCRIPT_BACKGROUND"

    const/16 v2, 0xc

    const-string v3, "Script Background"

    const v4, 0x7f050039

    const v5, 0x7f050038

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->J0:Lcom/aide/engine/m;

    new-instance v0, Lcom/aide/engine/m;

    const-string v1, "SCRIPT"

    const/16 v2, 0xd

    const-string v3, "Script"

    const v4, 0x7f050039

    const v5, 0x7f050038

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/aide/engine/m;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/aide/engine/m;

    const/4 v1, 0x0

    sget-object v2, Lcom/aide/engine/m;->j6:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/aide/engine/m;->DW:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/aide/engine/m;->FH:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/aide/engine/m;->Hw:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/aide/engine/m;->v5:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/aide/engine/m;->Zo:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/aide/engine/m;->VH:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/aide/engine/m;->gn:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/aide/engine/m;->u7:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/aide/engine/m;->tp:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/aide/engine/m;->EQ:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/aide/engine/m;->we:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/aide/engine/m;->J0:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/aide/engine/m;->J8:Lcom/aide/engine/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aide/engine/m;->Ws:[Lcom/aide/engine/m;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
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
    .registers 13
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
    .registers 7

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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/engine/m;
    .registers 6

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
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public Hw()I
    .registers 5

    const-wide v2, 0x2e8a93db981b720L

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/m;->QX:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2e8a93db981b720L

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget v0, p0, Lcom/aide/engine/m;->Mr:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/m;->XL:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public j6(Landroid/content/Context;Z)I
    .registers 6

    iget-object v0, p0, Lcom/aide/engine/m;->U2:Ljava/lang/String;

    iget v1, p0, Lcom/aide/engine/m;->j3:I

    iget v2, p0, Lcom/aide/engine/m;->aM:I

    invoke-static {v0, p2, v1, v2}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHighLightColor(Ljava/lang/String;ZII)I

    move-result v0

    return v0
.end method
