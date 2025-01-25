.class synthetic Lcom/aide/ui/Va;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/Wa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static FH:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field static final j6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0xb84ffac297fdb0L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x5c35b1b4fa871acL

    :try_start_6
    const-class v3, Lcom/aide/ui/Va;

    const-wide v4, -0x1bdd5d60211a3735L  # -2.3045321710945256E174

    const-wide v6, 0x4ee39c95a84f8ab3L  # 1.0828375443165198E72

    invoke-static {v3, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/Va;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1c
    invoke-static {}, Lcom/aide/ui/Wa$a;->values()[Lcom/aide/ui/Wa$a;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/aide/ui/Va;->j6:[I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_3e

    :try_start_25
    sget-object v4, Lcom/aide/ui/Wa$a;->DW:Lcom/aide/ui/Wa$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    aput v5, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2e} :catch_2f
    .catchall {:try_start_25 .. :try_end_2e} :catchall_3e

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Lcom/aide/ui/Va;->j6:[I

    sget-object v4, Lcom/aide/ui/Wa$a;->j6:Lcom/aide/ui/Wa$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v3, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c
    .catchall {:try_start_30 .. :try_end_3b} :catchall_3e

    goto :goto_3d

    :catch_3c
    move-exception v0

    :goto_3d
    return-void

    :catchall_3e
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/Va;->FH:Z

    if-eqz v4, :cond_46

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_46
    throw v3
.end method
