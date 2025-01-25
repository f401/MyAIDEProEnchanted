.class synthetic Lcom/aide/ui/views/editor/D;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/views/editor/OConsole;
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
        method = -0x1f1d37f22cc39f28L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x1b50a328cf9a0de7L  # 4.105693155791931E-177

    :try_start_6
    const-class v3, Lcom/aide/ui/views/editor/D;

    const-wide v4, -0x3a3a72a9f2dfbf3L

    const-wide v6, 0x301f193a35949630L  # 6.714306792943078E-77

    invoke-static {v3, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/views/editor/D;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1c
    invoke-static {}, Lcom/aide/ui/views/editor/OConsole$c;->values()[Lcom/aide/ui/views/editor/OConsole$c;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/aide/ui/views/editor/D;->j6:[I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_72

    :try_start_25
    sget-object v4, Lcom/aide/ui/views/editor/OConsole$c;->j6:Lcom/aide/ui/views/editor/OConsole$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    aput v5, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2e} :catch_2f
    .catchall {:try_start_25 .. :try_end_2e} :catchall_72

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Lcom/aide/ui/views/editor/D;->j6:[I

    sget-object v4, Lcom/aide/ui/views/editor/OConsole$c;->DW:Lcom/aide/ui/views/editor/OConsole$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v3, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c
    .catchall {:try_start_30 .. :try_end_3b} :catchall_72

    goto :goto_3d

    :catch_3c
    move-exception v3

    :goto_3d
    :try_start_3d
    sget-object v3, Lcom/aide/ui/views/editor/D;->j6:[I

    sget-object v4, Lcom/aide/ui/views/editor/OConsole$c;->Hw:Lcom/aide/ui/views/editor/OConsole$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    aput v5, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49
    .catchall {:try_start_3d .. :try_end_48} :catchall_72

    goto :goto_4a

    :catch_49
    move-exception v3

    :goto_4a
    :try_start_4a
    sget-object v3, Lcom/aide/ui/views/editor/D;->j6:[I

    sget-object v4, Lcom/aide/ui/views/editor/OConsole$c;->v5:Lcom/aide/ui/views/editor/OConsole$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56
    .catchall {:try_start_4a .. :try_end_55} :catchall_72

    goto :goto_57

    :catch_56
    move-exception v3

    :goto_57
    :try_start_57
    sget-object v3, Lcom/aide/ui/views/editor/D;->j6:[I

    sget-object v4, Lcom/aide/ui/views/editor/OConsole$c;->Zo:Lcom/aide/ui/views/editor/OConsole$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63
    .catchall {:try_start_57 .. :try_end_62} :catchall_72

    goto :goto_64

    :catch_63
    move-exception v3

    :goto_64
    :try_start_64
    sget-object v3, Lcom/aide/ui/views/editor/D;->j6:[I

    sget-object v4, Lcom/aide/ui/views/editor/OConsole$c;->FH:Lcom/aide/ui/views/editor/OConsole$c;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6f} :catch_70
    .catchall {:try_start_64 .. :try_end_6f} :catchall_72

    goto :goto_71

    :catch_70
    move-exception v0

    :goto_71
    return-void

    :catchall_72
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/views/editor/D;->FH:Z

    if-eqz v4, :cond_7a

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_7a
    throw v3
.end method
