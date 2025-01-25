.class synthetic Lcom/aide/uidesigner/Z;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aide/uidesigner/ka;
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
        method = 0x967efc87d10410L
    .end annotation

    const/4 v0, 0x0

    const-wide v1, -0x2d38b43b9668f887L  # -5.931840046178292E90

    :try_start_6
    const-class v3, Lcom/aide/uidesigner/Z;

    const-wide v4, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v6, -0x30421382a08daad7L  # -1.353491380773134E76

    invoke-static {v3, v4, v5, v6, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v3, Lcom/aide/uidesigner/Z;->DW:Z

    if-eqz v3, :cond_1c

    invoke-static {v1, v2, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_1c
    invoke-static {}, Lcom/aide/uidesigner/N$b;->values()[Lcom/aide/uidesigner/N$b;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/aide/uidesigner/Z;->j6:[I
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_fd

    :try_start_25
    sget-object v4, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    aput v5, v3, v4
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_2e} :catch_2f
    .catchall {:try_start_25 .. :try_end_2e} :catchall_fd

    goto :goto_30

    :catch_2f
    move-exception v3

    :goto_30
    :try_start_30
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v3, v4
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_3b} :catch_3c
    .catchall {:try_start_30 .. :try_end_3b} :catchall_fd

    goto :goto_3d

    :catch_3c
    move-exception v3

    :goto_3d
    :try_start_3d
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x3

    aput v5, v3, v4
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_48} :catch_49
    .catchall {:try_start_3d .. :try_end_48} :catchall_fd

    goto :goto_4a

    :catch_49
    move-exception v3

    :goto_4a
    :try_start_4a
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_56
    .catchall {:try_start_4a .. :try_end_55} :catchall_fd

    goto :goto_57

    :catch_56
    move-exception v3

    :goto_57
    :try_start_57
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v3, v4
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_62} :catch_63
    .catchall {:try_start_57 .. :try_end_62} :catchall_fd

    goto :goto_64

    :catch_63
    move-exception v3

    :goto_64
    :try_start_64
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->Zo:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v3, v4
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_6f} :catch_70
    .catchall {:try_start_64 .. :try_end_6f} :catchall_fd

    goto :goto_71

    :catch_70
    move-exception v3

    :goto_71
    :try_start_71
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v3, v4
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_7c} :catch_7d
    .catchall {:try_start_71 .. :try_end_7c} :catchall_fd

    goto :goto_7e

    :catch_7d
    move-exception v3

    :goto_7e
    :try_start_7e
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v3, v4
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_8a} :catch_8b
    .catchall {:try_start_7e .. :try_end_8a} :catchall_fd

    goto :goto_8c

    :catch_8b
    move-exception v3

    :goto_8c
    :try_start_8c
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->FH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x9

    aput v5, v3, v4
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_99
    .catchall {:try_start_8c .. :try_end_98} :catchall_fd

    goto :goto_9a

    :catch_99
    move-exception v3

    :goto_9a
    :try_start_9a
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xa

    aput v5, v3, v4
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_a6} :catch_a7
    .catchall {:try_start_9a .. :try_end_a6} :catchall_fd

    goto :goto_a8

    :catch_a7
    move-exception v3

    :goto_a8
    :try_start_a8
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xb

    aput v5, v3, v4
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b5
    .catchall {:try_start_a8 .. :try_end_b4} :catchall_fd

    goto :goto_b6

    :catch_b5
    move-exception v3

    :goto_b6
    :try_start_b6
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->QX:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xc

    aput v5, v3, v4
    :try_end_c2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_c2} :catch_c3
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_fd

    goto :goto_c4

    :catch_c3
    move-exception v3

    :goto_c4
    :try_start_c4
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->DW:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xd

    aput v5, v3, v4
    :try_end_d0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c4 .. :try_end_d0} :catch_d1
    .catchall {:try_start_c4 .. :try_end_d0} :catchall_fd

    goto :goto_d2

    :catch_d1
    move-exception v3

    :goto_d2
    :try_start_d2
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xe

    aput v5, v3, v4
    :try_end_de
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d2 .. :try_end_de} :catch_df
    .catchall {:try_start_d2 .. :try_end_de} :catchall_fd

    goto :goto_e0

    :catch_df
    move-exception v3

    :goto_e0
    :try_start_e0
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0xf

    aput v5, v3, v4
    :try_end_ec
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e0 .. :try_end_ec} :catch_ed
    .catchall {:try_start_e0 .. :try_end_ec} :catchall_fd

    goto :goto_ee

    :catch_ed
    move-exception v3

    :goto_ee
    :try_start_ee
    sget-object v3, Lcom/aide/uidesigner/Z;->j6:[I

    sget-object v4, Lcom/aide/uidesigner/N$b;->Ws:Lcom/aide/uidesigner/N$b;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/16 v5, 0x10

    aput v5, v3, v4
    :try_end_fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ee .. :try_end_fa} :catch_fb
    .catchall {:try_start_ee .. :try_end_fa} :catchall_fd

    goto :goto_fc

    :catch_fb
    move-exception v0

    :goto_fc
    return-void

    :catchall_fd
    move-exception v3

    sget-boolean v4, Lcom/aide/uidesigner/Z;->FH:Z

    if-eqz v4, :cond_105

    invoke-static {v3, v1, v2, v0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_105
    throw v3
.end method
