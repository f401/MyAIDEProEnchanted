.class synthetic Labcd/nk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yk;
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
        method = -0x1ec4a7be0f877ba4L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x1a5f00a5b62d3c90L  # -3.526563618849049E181

    :try_start_6
    const-class v3, Labcd/nk;

    const-wide v4, -0x6e165979867cddf9L

    const-wide v6, 0xefa58f38e4815b8L

    invoke-static {v3, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/nk;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1c
    invoke-static {}, Labcd/yk$f;->values()[Labcd/yk$f;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Labcd/nk;->j6:[I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_9b

    :try_start_25
    sget-object v4, Labcd/yk$f;->j6:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    aput v5, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2e} :catch_2f
    .catchall {:try_start_25 .. :try_end_2e} :catchall_9b

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->DW:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v3, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c
    .catchall {:try_start_30 .. :try_end_3b} :catchall_9b

    goto :goto_3d

    :catch_3c
    move-exception v3

    :goto_3d
    :try_start_3d
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->Hw:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    aput v5, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49
    .catchall {:try_start_3d .. :try_end_48} :catchall_9b

    goto :goto_4a

    :catch_49
    move-exception v3

    :goto_4a
    :try_start_4a
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->FH:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56
    .catchall {:try_start_4a .. :try_end_55} :catchall_9b

    goto :goto_57

    :catch_56
    move-exception v3

    :goto_57
    :try_start_57
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->Zo:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63
    .catchall {:try_start_57 .. :try_end_62} :catchall_9b

    goto :goto_64

    :catch_63
    move-exception v3

    :goto_64
    :try_start_64
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->VH:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6f} :catch_70
    .catchall {:try_start_64 .. :try_end_6f} :catchall_9b

    goto :goto_71

    :catch_70
    move-exception v3

    :goto_71
    :try_start_71
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->gn:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_7d
    .catchall {:try_start_71 .. :try_end_7c} :catchall_9b

    goto :goto_7e

    :catch_7d
    move-exception v3

    :goto_7e
    :try_start_7e
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->u7:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b
    .catchall {:try_start_7e .. :try_end_8a} :catchall_9b

    goto :goto_8c

    :catch_8b
    move-exception v3

    :goto_8c
    :try_start_8c
    sget-object v3, Labcd/nk;->j6:[I

    sget-object v4, Labcd/yk$f;->v5:Labcd/yk$f;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99
    .catchall {:try_start_8c .. :try_end_98} :catchall_9b

    goto :goto_9a

    :catch_99
    move-exception v0

    :goto_9a
    return-void

    :catchall_9b
    move-exception v3

    sget-boolean v4, Labcd/nk;->FH:Z

    if-eqz v4, :cond_a3

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_a3
    throw v3
.end method
