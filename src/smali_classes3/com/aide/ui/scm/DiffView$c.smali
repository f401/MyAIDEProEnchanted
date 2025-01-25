.class final enum Lcom/aide/ui/scm/DiffView$c;
.super Ljava/lang/Enum;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/scm/DiffView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aide/ui/scm/DiffView$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DW:Lcom/aide/ui/scm/DiffView$c;
    .annotation runtime Labcd/ru;
        field = -0x2e02918658871bbcL
    .end annotation
.end field

.field public static final enum FH:Lcom/aide/ui/scm/DiffView$c;
    .annotation runtime Labcd/ru;
        field = 0x20f38a1cc693987L
    .end annotation
.end field

.field public static final enum Hw:Lcom/aide/ui/scm/DiffView$c;
    .annotation runtime Labcd/ru;
        field = -0x9f1e2f0d18e8a89L
    .end annotation
.end field

.field private static VH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static Zo:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static final enum j6:Lcom/aide/ui/scm/DiffView$c;
    .annotation runtime Labcd/ru;
        field = -0x2da82fda5baf7d8bL
    .end annotation
.end field

.field private static final v5:[Lcom/aide/ui/scm/DiffView$c;


# direct methods
.method static constructor <clinit>()V
    .registers 12
    .annotation runtime Labcd/su;
        method = -0x1a34f3ad8a27e3b0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x219ce212f3762860L

    :try_start_6
    const-class v3, Lcom/aide/ui/scm/DiffView$c;

    const-wide v4, -0x8ed053bb969e520L

    invoke-static {v3, v4, v5, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/scm/DiffView$c;->Zo:Z

    if-eqz v3, :cond_17

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_17
    new-instance v3, Lcom/aide/ui/scm/DiffView$c;

    const-string v4, "deleted"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/aide/ui/scm/DiffView$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/aide/ui/scm/DiffView$c;->j6:Lcom/aide/ui/scm/DiffView$c;

    new-instance v4, Lcom/aide/ui/scm/DiffView$c;

    const-string v6, "inserted"

    const/4 v7, 0x1

    invoke-direct {v4, v6, v7}, Lcom/aide/ui/scm/DiffView$c;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/aide/ui/scm/DiffView$c;->DW:Lcom/aide/ui/scm/DiffView$c;

    new-instance v6, Lcom/aide/ui/scm/DiffView$c;

    const-string v8, "normal"

    const/4 v9, 0x2

    invoke-direct {v6, v8, v9}, Lcom/aide/ui/scm/DiffView$c;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/aide/ui/scm/DiffView$c;->FH:Lcom/aide/ui/scm/DiffView$c;

    new-instance v8, Lcom/aide/ui/scm/DiffView$c;

    const-string v10, "separator"

    const/4 v11, 0x3

    invoke-direct {v8, v10, v11}, Lcom/aide/ui/scm/DiffView$c;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/aide/ui/scm/DiffView$c;->Hw:Lcom/aide/ui/scm/DiffView$c;

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/aide/ui/scm/DiffView$c;

    aput-object v3, v10, v5

    aput-object v4, v10, v7

    aput-object v6, v10, v9

    aput-object v8, v10, v11

    sput-object v10, Lcom/aide/ui/scm/DiffView$c;->v5:[Lcom/aide/ui/scm/DiffView$c;
    :try_end_4c
    .catchall {:try_start_6 .. :try_end_4c} :catchall_4d

    return-void

    :catchall_4d
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/DiffView$c;->VH:Z

    if-eqz v4, :cond_55

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_55
    throw v3
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 10
    .annotation runtime Labcd/su;
        method = -0x185d569f0ddc800L
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/scm/DiffView$c;->Zo:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    const-wide v1, -0x57dd32c2ab21ee74L

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/scm/DiffView$c;->VH:Z

    if-eqz v1, :cond_2b

    const-wide v2, -0x57dd32c2ab21ee74L

    const/4 v4, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p2}, Ljava/lang/Integer;-><init>(I)V

    move-object v1, v0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aide/ui/scm/DiffView$c;
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x9083befa2683b2fL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2d9039b103d77e0L  # -7.340194567560228E294

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/DiffView$c;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    const-class v3, Lcom/aide/ui/scm/DiffView$c;

    invoke-static {v3, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/aide/ui/scm/DiffView$c;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/DiffView$c;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    throw v3
.end method

.method public static values()[Lcom/aide/ui/scm/DiffView$c;
    .registers 5
    .annotation runtime Labcd/su;
        method = 0xda0ad2711f5594dL
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x15f837b49e93d210L

    :try_start_6
    sget-boolean v3, Lcom/aide/ui/scm/DiffView$c;->Zo:Z

    if-eqz v3, :cond_d

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_d
    sget-object v3, Lcom/aide/ui/scm/DiffView$c;->v5:[Lcom/aide/ui/scm/DiffView$c;

    invoke-virtual {v3}, [Lcom/aide/ui/scm/DiffView$c;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/aide/ui/scm/DiffView$c;
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_16

    return-object v3

    :catchall_16
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/scm/DiffView$c;->VH:Z

    if-eqz v4, :cond_1e

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v3
.end method
