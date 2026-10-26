.class public final enum Labcd/le;
.super Ljava/lang/Enum;

# interfaces
.implements Labcd/ha;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
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
    .locals 12
    .annotation runtime Labcd/su;
        method = 0x1b115243be9f8230L
    .end annotation

    const/4 v11, 0x0

    :try_start_0
    const-class v0, Labcd/le;

    const-wide v2, -0xd37b33bbda85980L

    const-wide v4, -0xd37b33bbda85980L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Labcd/le;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x1d5e390346c328c0L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Labcd/le;

    const-string v1, "ADJUST_NEWLINES"

    const/4 v2, 0x0

    const-string v3, "General"

    const-string v4, "Adjust lines on autoformat"

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v6}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Labcd/le;->j6:Labcd/le;

    new-instance v1, Labcd/le;

    const-string v2, "ADJUST_SPACES"

    const/4 v3, 0x1

    const-string v4, "General"

    const-string v5, "Adjust spaces on autoformat"

    const-string v6, ""

    const-string v7, ""

    invoke-direct/range {v1 .. v7}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Labcd/le;->DW:Labcd/le;

    new-instance v2, Labcd/le;

    const-string v3, "FORMAT_ONPASTE"

    const/4 v4, 0x2

    const-string v5, "General"

    const-string v6, "Autoformat pasted code"

    const-string v7, ""

    const-string v8, ""

    invoke-direct/range {v2 .. v8}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Labcd/le;->FH:Labcd/le;

    new-instance v3, Labcd/le;

    const-string v4, "INDENT_ONTYPE"

    const/4 v5, 0x3

    const-string v6, "General"

    const-string v7, "Adjust indentation while typing"

    const-string v8, ""

    const-string v9, ""

    invoke-direct/range {v3 .. v9}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Labcd/le;->Hw:Labcd/le;

    new-instance v4, Labcd/le;

    const-string v5, "AUTO_INSERT_CLOSING_BRACE_ONTYPE"

    const/4 v6, 0x4

    const-string v7, "General"

    const-string v8, "Automatically insert closing tag"

    const-string v9, ""

    const-string v10, ""

    invoke-direct/range {v4 .. v10}, Labcd/le;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Labcd/le;->v5:Labcd/le;

    const/4 v5, 0x5

    new-array v5, v5, [Labcd/le;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Labcd/le;->Zo:[Labcd/le;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/le;->gn:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x1d5e390346c328c0L

    invoke-static {v0, v2, v3, v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
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

    if-eqz v0, :cond_0

    const-wide v0, 0xb5a3f315e90a88L

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

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Labcd/le;->u7:Ljava/lang/String;

    iput-object p4, p0, Labcd/le;->tp:Ljava/lang/String;

    iput-object p5, p0, Labcd/le;->EQ:Ljava/lang/String;

    iput-object p6, p0, Labcd/le;->we:Ljava/lang/String;

    return-void
.end method

.method public static j6(Z)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set",
            "<",
            "Labcd/le;",
            ">;"
        }
    .end annotation

    const-wide v4, 0x4fec7d6d498bdeecL    # 1.0309095933269422E77

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/le;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x4fec7d6d498bdeecL    # 1.0309095933269422E77

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Z)V

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Labcd/le;->DW:Labcd/le;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Labcd/le;->FH:Labcd/le;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Labcd/le;->Hw:Labcd/le;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Labcd/le;->v5:Labcd/le;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/le;->gn:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v4, v5, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Labcd/le;
    .locals 6

    const-wide v4, 0x694e085b9606ff0L    # 5.88861188093782E-277

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/le;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x694e085b9606ff0L    # 5.88861188093782E-277

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Labcd/le;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Labcd/le;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/le;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Labcd/le;
    .locals 6

    const-wide v4, -0x1f94a1c6cccfd814L    # -2.935565567557171E156

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/le;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x1f94a1c6cccfd814L    # -2.935565567557171E156

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Labcd/le;->Zo:[Labcd/le;

    invoke-virtual {v0}, [Labcd/le;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Labcd/le;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/le;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 4

    const-wide v2, -0xe6cd5e1e1398e45L    # -1.2479424799688452E239

    :try_start_0
    sget-boolean v0, Labcd/le;->VH:Z

    if-eqz v0, :cond_0

    const-wide v0, -0xe6cd5e1e1398e45L    # -1.2479424799688452E239

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Labcd/le;->tp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Labcd/le;->gn:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
