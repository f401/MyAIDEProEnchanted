.class synthetic Lcom/aide/appwizard/runtime/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/appwizard/runtime/AppWizardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final DW:[I

.field private static FH:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field private static Hw:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field static final j6:[I


# direct methods
.method static constructor <clinit>()V
    .registers 13
    .annotation runtime Labcd/su;
        method = -0xf7e0ecae393a938L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, 0x2b9a4465f1ac79bL

    :try_start_6
    const-class v3, Lcom/aide/appwizard/runtime/g;

    const-wide v4, 0x43daa093d23e6f19L  # 7.6747838898388593E18

    const-wide v6, 0x11b397f11a765d40L

    invoke-static {v3, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/appwizard/runtime/g;->FH:Z

    if-eqz v3, :cond_1c

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1c
    invoke-static {}, Lcom/aide/appwizard/runtime/i$d;->values()[Lcom/aide/appwizard/runtime/i$d;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/aide/appwizard/runtime/g;->DW:[I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_e8

    const/4 v4, 0x1

    :try_start_26
    sget-object v5, Lcom/aide/appwizard/runtime/i$d;->v5:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v3, v5
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_e8

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    const/4 v3, 0x2

    :try_start_31
    sget-object v5, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v6, Lcom/aide/appwizard/runtime/i$d;->Zo:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_3b} :catch_3c
    .catchall {:try_start_31 .. :try_end_3b} :catchall_e8

    goto :goto_3d

    :catch_3c
    move-exception v5

    :goto_3d
    const/4 v5, 0x3

    :try_start_3e
    sget-object v6, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v7, Lcom/aide/appwizard/runtime/i$d;->VH:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_48} :catch_49
    .catchall {:try_start_3e .. :try_end_48} :catchall_e8

    goto :goto_4a

    :catch_49
    move-exception v6

    :goto_4a
    const/4 v6, 0x4

    :try_start_4b
    sget-object v7, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v8, Lcom/aide/appwizard/runtime/i$d;->gn:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_55} :catch_56
    .catchall {:try_start_4b .. :try_end_55} :catchall_e8

    goto :goto_57

    :catch_56
    move-exception v7

    :goto_57
    const/4 v7, 0x5

    :try_start_58
    sget-object v8, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v9, Lcom/aide/appwizard/runtime/i$d;->FH:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_63
    .catchall {:try_start_58 .. :try_end_62} :catchall_e8

    goto :goto_64

    :catch_63
    move-exception v8

    :goto_64
    const/4 v8, 0x6

    :try_start_65
    sget-object v9, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v10, Lcom/aide/appwizard/runtime/i$d;->Hw:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_6f} :catch_70
    .catchall {:try_start_65 .. :try_end_6f} :catchall_e8

    goto :goto_71

    :catch_70
    move-exception v9

    :goto_71
    const/4 v9, 0x7

    :try_start_72
    sget-object v10, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v11, Lcom/aide/appwizard/runtime/i$d;->j6:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_7c} :catch_7d
    .catchall {:try_start_72 .. :try_end_7c} :catchall_e8

    goto :goto_7e

    :catch_7d
    move-exception v10

    :goto_7e
    :try_start_7e
    sget-object v10, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v11, Lcom/aide/appwizard/runtime/i$d;->DW:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/16 v12, 0x8

    aput v12, v10, v11
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b
    .catchall {:try_start_7e .. :try_end_8a} :catchall_e8

    goto :goto_8c

    :catch_8b
    move-exception v10

    :goto_8c
    :try_start_8c
    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->values()[Lcom/aide/appwizard/runtime/i$e;

    move-result-object v10

    array-length v10, v10

    new-array v10, v10, [I

    sput-object v10, Lcom/aide/appwizard/runtime/g;->j6:[I
    :try_end_95
    .catchall {:try_start_8c .. :try_end_95} :catchall_e8

    :try_start_95
    sget-object v11, Lcom/aide/appwizard/runtime/i$e;->j6:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aput v4, v10, v11
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9d} :catch_9e
    .catchall {:try_start_95 .. :try_end_9d} :catchall_e8

    goto :goto_9f

    :catch_9e
    move-exception v4

    :goto_9f
    :try_start_9f
    sget-object v4, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v10, Lcom/aide/appwizard/runtime/i$e;->DW:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v3, v4, v10
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_aa
    .catchall {:try_start_9f .. :try_end_a9} :catchall_e8

    goto :goto_ab

    :catch_aa
    move-exception v3

    :goto_ab
    :try_start_ab
    sget-object v3, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v4, Lcom/aide/appwizard/runtime/i$e;->FH:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v5, v3, v4
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b5} :catch_b6
    .catchall {:try_start_ab .. :try_end_b5} :catchall_e8

    goto :goto_b7

    :catch_b6
    move-exception v3

    :goto_b7
    :try_start_b7
    sget-object v3, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v4, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v6, v3, v4
    :try_end_c1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_c1} :catch_c2
    .catchall {:try_start_b7 .. :try_end_c1} :catchall_e8

    goto :goto_c3

    :catch_c2
    move-exception v3

    :goto_c3
    :try_start_c3
    sget-object v3, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v4, Lcom/aide/appwizard/runtime/i$e;->v5:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v7, v3, v4
    :try_end_cd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c3 .. :try_end_cd} :catch_ce
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_e8

    goto :goto_cf

    :catch_ce
    move-exception v3

    :goto_cf
    :try_start_cf
    sget-object v3, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v4, Lcom/aide/appwizard/runtime/i$e;->Zo:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v8, v3, v4
    :try_end_d9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cf .. :try_end_d9} :catch_da
    .catchall {:try_start_cf .. :try_end_d9} :catchall_e8

    goto :goto_db

    :catch_da
    move-exception v3

    :goto_db
    :try_start_db
    sget-object v3, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v4, Lcom/aide/appwizard/runtime/i$e;->VH:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v9, v3, v4
    :try_end_e5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e5} :catch_e6
    .catchall {:try_start_db .. :try_end_e5} :catchall_e8

    goto :goto_e7

    :catch_e6
    move-exception v0

    :goto_e7
    return-void

    :catchall_e8
    move-exception v3

    sget-boolean v4, Lcom/aide/appwizard/runtime/g;->Hw:Z

    if-eqz v4, :cond_f0

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_f0
    throw v3
.end method
