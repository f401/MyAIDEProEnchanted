.class synthetic Lcom/aide/ui/activities/z;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/ui/activities/GotoBrowserActivity;
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
        method = 0x347d456f85a6bce9L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2b43b0b3adc72760L  # -1.5480134850298684E100

    :try_start_6
    const-class v3, Lcom/aide/ui/activities/z;

    const-wide v4, -0x94440bad118f03dL  # -8.737246563262376E263

    const-wide v6, 0x2b1888d56d878473L

    invoke-static {v3, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/ui/activities/z;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1c
    invoke-static {}, Lcom/aide/engine/SourceEntity$a;->values()[Lcom/aide/engine/SourceEntity$a;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/aide/ui/activities/z;->j6:[I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_65

    :try_start_25
    sget-object v4, Lcom/aide/engine/SourceEntity$a;->j6:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    aput v5, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2e} :catch_2f
    .catchall {:try_start_25 .. :try_end_2e} :catchall_65

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Lcom/aide/ui/activities/z;->j6:[I

    sget-object v4, Lcom/aide/engine/SourceEntity$a;->DW:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v3, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c
    .catchall {:try_start_30 .. :try_end_3b} :catchall_65

    goto :goto_3d

    :catch_3c
    move-exception v3

    :goto_3d
    :try_start_3d
    sget-object v3, Lcom/aide/ui/activities/z;->j6:[I

    sget-object v4, Lcom/aide/engine/SourceEntity$a;->v5:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    aput v5, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49
    .catchall {:try_start_3d .. :try_end_48} :catchall_65

    goto :goto_4a

    :catch_49
    move-exception v3

    :goto_4a
    :try_start_4a
    sget-object v3, Lcom/aide/ui/activities/z;->j6:[I

    sget-object v4, Lcom/aide/engine/SourceEntity$a;->QX:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56
    .catchall {:try_start_4a .. :try_end_55} :catchall_65

    goto :goto_57

    :catch_56
    move-exception v3

    :goto_57
    :try_start_57
    sget-object v3, Lcom/aide/ui/activities/z;->j6:[I

    sget-object v4, Lcom/aide/engine/SourceEntity$a;->VH:Lcom/aide/engine/SourceEntity$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63
    .catchall {:try_start_57 .. :try_end_62} :catchall_65

    goto :goto_64

    :catch_63
    move-exception v0

    :goto_64
    return-void

    :catchall_65
    move-exception v3

    sget-boolean v4, Lcom/aide/ui/activities/z;->FH:Z

    if-eqz v4, :cond_6d

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_6d
    throw v3
.end method
