.class public final enum Labcd/le;
.super Ljava/lang/Enum;

# interfaces
.implements Labcd/ha;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Labcd/le;",
        ">;",
        "Labcd/ha;"
    }
.end annotation


# static fields
.field public static final enum DW:Labcd/le;

.field public static final enum FH:Labcd/le;

.field public static final enum Hw:Labcd/le;

.field private static VH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static final Zo:[Labcd/le;

.field private static gn:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum j6:Labcd/le;

.field public static final enum v5:Labcd/le;


# instance fields
.field private final EQ:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x30584fa3241bc617L
    .end annotation
.end field

.field private final tp:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x1595e5985cb1b54fL
    .end annotation
.end field

.field private final u7:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x2a084f7e940c6128L
    .end annotation
.end field

.field private final we:Ljava/lang/String;
    .annotation runtime Labcd/ru;
        field = -0x3058c8df1124a5a8L
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 27
    .annotation runtime Labcd/su;
        method = 0x1b115243be9f8230L
    .end annotation

    const/4 v1, 0x0

    const-wide v2, 0x1d5e390346c328c0L

    :try_start_6
    const-class v0, Labcd/le;

    const-wide v4, -0xd37b33bbda85980L

    invoke-static {v0, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/le;->VH:Z

    if-eqz v0, :cond_17

    invoke-static {v2, v3, v1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v0, Labcd/le;

    const-string v5, "ADJUST_NEWLINES"

    const/4 v6, 0x0

    const-string v7, "General"

    const-string v8, "Adjust lines on autoformat"

    const-string v9, ""

    const-string v10, ""

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/le;->j6:Labcd/le;

    new-instance v4, Labcd/le;

    const-string v12, "ADJUST_SPACES"

    const/4 v13, 0x1

    const-string v14, "General"

    const-string v15, "Adjust spaces on autoformat"

    const-string v16, ""

    const-string v17, ""

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Labcd/le;->DW:Labcd/le;

    new-instance v12, Labcd/le;

    const-string v6, "FORMAT_ONPASTE"

    const/4 v7, 0x2

    const-string v8, "General"

    const-string v9, "Autoformat pasted code"

    const-string v10, ""

    const-string v11, ""

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Labcd/le;->FH:Labcd/le;

    new-instance v5, Labcd/le;

    const-string v14, "INDENT_ONTYPE"

    const/4 v15, 0x3

    const-string v16, "General"

    const-string v17, "Adjust indentation while typing"

    const-string v18, ""

    const-string v19, ""

    move-object v13, v5

    invoke-direct/range {v13 .. v19}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Labcd/le;->Hw:Labcd/le;

    new-instance v6, Labcd/le;

    const-string v21, "AUTO_INSERT_CLOSING_BRACE_ONTYPE"

    const/16 v22, 0x4

    const-string v23, "General"

    const-string v24, "Automatically insert closing tag"

    const-string v25, ""

    const-string v26, ""

    move-object/from16 v20, v6

    invoke-direct/range {v20 .. v26}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Labcd/le;->v5:Labcd/le;

    const/4 v7, 0x5

    new-array v7, v7, [Labcd/le;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v0, 0x1

    aput-object v4, v7, v0

    const/4 v0, 0x2

    aput-object v12, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    sput-object v7, Labcd/le;->Zo:[Labcd/le;
    :try_end_8c
    .catchall {:try_start_6 .. :try_end_8c} :catchall_8d

    return-void

    :catchall_8d
    move-exception v0

    sget-boolean v4, Labcd/le;->gn:Z

    if-eqz v4, :cond_95

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_95
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Labcd/su;
        method = 0x246ebaf04c1c6d0L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-boolean v0, Labcd/le;->VH:Z

    if-eqz v0, :cond_27

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

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const-wide v1, 0xb5a3f315e90a88L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/le;->u7:Ljava/lang/String;

    iput-object p4, p0, Labcd/le;->tp:Ljava/lang/String;

    iput-object p5, p0, Labcd/le;->EQ:Ljava/lang/String;

    iput-object p6, p0, Labcd/le;->we:Ljava/lang/String;

    return-void
.end method

.method public static j6(Z)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Labcd/le;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x4fec7d6d498bdeecL  # 1.0309095933269422E77

    :try_start_6
    sget-boolean v3, Labcd/le;->VH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_d
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Labcd/le;->DW:Labcd/le;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Labcd/le;->FH:Labcd/le;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Labcd/le;->Hw:Labcd/le;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v4, Labcd/le;->v5:Labcd/le;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_27

    return-object v3

    :catchall_27
    move-exception v3

    sget-boolean v4, Labcd/le;->gn:Z

    if-eqz v4, :cond_34

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v3, v1, v2, v0, v4}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_34
    throw v3
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/le;
    .registers 6

    const/4 v0, 0x0

    const-wide v1, 0x694e085b9606ff0L  # 5.88861188093782E-277

    :try_start_6
    sget-boolean v3, Labcd/le;->VH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Labcd/le;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Labcd/le;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/le;->gn:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Labcd/le;
    .registers 5

    const/4 v0, 0x0

    const-wide v1, -0x1f94a1c6cccfd814L  # -2.935565567557171E156

    :try_start_6
    sget-boolean v3, Labcd/le;->VH:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Labcd/le;->Zo:[Labcd/le;

    invoke-virtual {v3}, [Labcd/le;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Labcd/le;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Labcd/le;->gn:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 5

    const-wide v0, -0xe6cd5e1e1398e45L  # -1.2479424799688452E239

    :try_start_5
    sget-boolean v2, Labcd/le;->VH:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v0, p0, Labcd/le;->tp:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-object v0

    :catchall_f
    move-exception v2

    sget-boolean v3, Labcd/le;->gn:Z

    if-eqz v3, :cond_17

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_17
    throw v2
.end method
