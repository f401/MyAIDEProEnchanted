.class final enum Lcom/aide/engine/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/engine/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aide/engine/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = 0xc01457a7cc18438L
    .end annotation
.end field

.field public static final enum EQ:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = -0x18973ae3423c401fL
    .end annotation
.end field

.field public static final enum FH:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = -0x10cbd0c4ed8b900L
    .end annotation
.end field

.field public static final enum Hw:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = -0x14186e870a1f2325L
    .end annotation
.end field

.field private static J0:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static J8:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static final enum VH:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = -0x274a7299c9fe33dbL
    .end annotation
.end field

.field public static final enum Zo:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = -0xb6e4663b3701bf7L
    .end annotation
.end field

.field public static final enum gn:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = 0x23fa455981f7ff6fL
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = 0x1d35295e63f08c60L
    .end annotation
.end field

.field public static final enum tp:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = 0x2172090cb5340273L
    .end annotation
.end field

.field public static final enum u7:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = -0x119e13058d87dc5L
    .end annotation
.end field

.field public static final enum v5:Lcom/aide/engine/c$a;
    .annotation runtime Labcd/ru;
        field = 0x63cfa09f3dd925b9L
    .end annotation
.end field

.field private static final we:[Lcom/aide/engine/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 14
    .annotation runtime Labcd/su;
        method = 0x1d30febe6bf4925L
    .end annotation

    const/4 v13, 0x0

    :try_start_0
    const-class v0, Lcom/aide/engine/c$a;

    const-wide v2, -0x3100513be712153fL    # -3.4986531029616634E72

    const-wide v4, -0x3100513be712153fL    # -3.4986531029616634E72

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/engine/c$a;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x2a7310f3aba81ac0L    # -1.2960857168629954E104

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/aide/engine/c$a;

    const-string v1, "MEMBERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aide/engine/c$a;->j6:Lcom/aide/engine/c$a;

    new-instance v1, Lcom/aide/engine/c$a;

    const-string v2, "UPDATE_MEMBERS_AFTER_EVENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/aide/engine/c$a;->DW:Lcom/aide/engine/c$a;

    new-instance v2, Lcom/aide/engine/c$a;

    const-string v3, "UPDATE_MEMBERS_AFTER_CHAREVENT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/aide/engine/c$a;->FH:Lcom/aide/engine/c$a;

    new-instance v3, Lcom/aide/engine/c$a;

    const-string v4, "PARAMETERS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aide/engine/c$a;->Hw:Lcom/aide/engine/c$a;

    new-instance v4, Lcom/aide/engine/c$a;

    const-string v5, "PARAMETERS_AFTER_EVENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/aide/engine/c$a;->v5:Lcom/aide/engine/c$a;

    new-instance v5, Lcom/aide/engine/c$a;

    const-string v6, "PARAMETERS_AFTER_CHAREVENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/aide/engine/c$a;->Zo:Lcom/aide/engine/c$a;

    new-instance v6, Lcom/aide/engine/c$a;

    const-string v7, "EXPRESSION_MEMBERS"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/aide/engine/c$a;->VH:Lcom/aide/engine/c$a;

    new-instance v7, Lcom/aide/engine/c$a;

    const-string v8, "UPDATE_EXPRESSION_MEMBERS_AFTER_EVENT"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/aide/engine/c$a;->gn:Lcom/aide/engine/c$a;

    new-instance v8, Lcom/aide/engine/c$a;

    const-string v9, "UPDATE_EXPRESSION_MEMBERS_AFTER_CHAREVENT"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/aide/engine/c$a;->u7:Lcom/aide/engine/c$a;

    new-instance v9, Lcom/aide/engine/c$a;

    const-string v10, "FULL_TYPE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/aide/engine/c$a;->tp:Lcom/aide/engine/c$a;

    new-instance v10, Lcom/aide/engine/c$a;

    const-string v11, "SUPER_METHODS"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/aide/engine/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/aide/engine/c$a;->EQ:Lcom/aide/engine/c$a;

    const/16 v11, 0xb

    new-array v11, v11, [Lcom/aide/engine/c$a;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v7, v11, v0

    const/16 v0, 0x8

    aput-object v8, v11, v0

    const/16 v0, 0x9

    aput-object v9, v11, v0

    const/16 v0, 0xa

    aput-object v10, v11, v0

    sput-object v11, Lcom/aide/engine/c$a;->we:[Lcom/aide/engine/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$a;->J8:Z

    if-eqz v1, :cond_1

    const-wide v2, -0x2a7310f3aba81ac0L    # -1.2960857168629954E104

    invoke-static {v0, v2, v3, v13}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 8
    .annotation runtime Labcd/su;
        method = 0x2ca59711c89cd85L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-wide v2, -0x2690f2f8f2c8887fL    # -6.414492315647233E122

    const/4 v4, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$a;->J0:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v6, -0x2690f2f8f2c8887fL    # -6.414492315647233E122

    const/4 v1, 0x0

    invoke-static {v6, v7, v1, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    sget-boolean v0, Lcom/aide/engine/c$a;->J8:Z

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/engine/c$a;
    .locals 6
    .annotation runtime Labcd/su;
        method = -0xf8e097200f5e63cL
    .end annotation

    const-wide v4, 0x63d47894ba3e670L    # 1.290407179992289E-278

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$a;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x63d47894ba3e670L    # 1.290407179992289E-278

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-class v0, Lcom/aide/engine/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aide/engine/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$a;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method

.method public static values()[Lcom/aide/engine/c$a;
    .locals 6
    .annotation runtime Labcd/su;
        method = 0x30b3270ecfa670L
    .end annotation

    const-wide v4, -0x143f2a21d273e1d4L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/engine/c$a;->J0:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x143f2a21d273e1d4L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/aide/engine/c$a;->we:[Lcom/aide/engine/c$a;

    invoke-virtual {v0}, [Lcom/aide/engine/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aide/engine/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/aide/engine/c$a;->J8:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
