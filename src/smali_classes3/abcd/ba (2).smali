.class synthetic Labcd/ba;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/ca;
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
        method = -0x29cf4a13b8f89058L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0xfbc06e68c23280bL  # 7.051788637689684E-233

    :try_start_6
    const-class v3, Labcd/ba;

    const-wide v4, 0x4ba14c8627ddb80L

    const-wide v6, -0x121be610be0017c4L

    invoke-static {v3, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Labcd/ba;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1c
    invoke-static {}, Labcd/ca$a;->values()[Labcd/ca$a;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Labcd/ba;->j6:[I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_58

    :try_start_25
    sget-object v4, Labcd/ca$a;->j6:Labcd/ca$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    aput v5, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2e} :catch_2f
    .catchall {:try_start_25 .. :try_end_2e} :catchall_58

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Labcd/ba;->j6:[I

    sget-object v4, Labcd/ca$a;->DW:Labcd/ca$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v3, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c
    .catchall {:try_start_30 .. :try_end_3b} :catchall_58

    goto :goto_3d

    :catch_3c
    move-exception v3

    :goto_3d
    :try_start_3d
    sget-object v3, Labcd/ba;->j6:[I

    sget-object v4, Labcd/ca$a;->FH:Labcd/ca$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    aput v5, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49
    .catchall {:try_start_3d .. :try_end_48} :catchall_58

    goto :goto_4a

    :catch_49
    move-exception v3

    :goto_4a
    :try_start_4a
    sget-object v3, Labcd/ba;->j6:[I

    sget-object v4, Labcd/ca$a;->Hw:Labcd/ca$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56
    .catchall {:try_start_4a .. :try_end_55} :catchall_58

    goto :goto_57

    :catch_56
    move-exception v0

    :goto_57
    return-void

    :catchall_58
    move-exception v3

    sget-boolean v4, Labcd/ba;->FH:Z

    if-eqz v4, :cond_60

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_60
    throw v3
.end method
