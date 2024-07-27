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
    .registers 6
    .annotation runtime Labcd/su;
        method = -0xf7e0ecae393a938L
    .end annotation

    :try_start_0
    const-class v0, Lcom/aide/appwizard/runtime/g;

    const-wide v2, 0x43daa093d23e6f19L    # 7.6747838898388593E18

    const-wide v4, 0x11b397f11a765d40L

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v0, Lcom/aide/appwizard/runtime/g;->FH:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x2b9a4465f1ac79bL

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/appwizard/runtime/i$d;->values()[Lcom/aide/appwizard/runtime/i$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->v5:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->Zo:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->VH:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    :try_start_4
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->gn:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :goto_3
    :try_start_5
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->FH:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    :try_start_6
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->Hw:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    :try_start_7
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->j6:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    :goto_6
    :try_start_8
    sget-object v0, Lcom/aide/appwizard/runtime/g;->DW:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$d;->DW:Lcom/aide/appwizard/runtime/i$d;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :goto_7
    :try_start_9
    invoke-static {}, Lcom/aide/appwizard/runtime/i$e;->values()[Lcom/aide/appwizard/runtime/i$e;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    sget-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$e;->j6:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    :goto_8
    :try_start_b
    sget-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$e;->DW:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0

    :goto_9
    :try_start_c
    sget-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$e;->FH:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    :goto_a
    :try_start_d
    sget-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$e;->Hw:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    :goto_b
    :try_start_e
    sget-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$e;->v5:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    :goto_c
    :try_start_f
    sget-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$e;->Zo:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0

    :goto_d
    :try_start_10
    sget-object v0, Lcom/aide/appwizard/runtime/g;->j6:[I

    sget-object v1, Lcom/aide/appwizard/runtime/i$e;->VH:Lcom/aide/appwizard/runtime/i$e;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    :goto_e
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/appwizard/runtime/g;->Hw:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x2b9a4465f1ac79bL

    const/4 v1, 0x0

    invoke-static {v0, v2, v3, v1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto/16 :goto_6

    :catch_a
    move-exception v0

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_1

    :catch_f
    move-exception v0

    goto/16 :goto_0
.end method
