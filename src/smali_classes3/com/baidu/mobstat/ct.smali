.class public Lcom/baidu/mobstat/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/baidu/mobstat/ct;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    new-instance v0, Lcom/baidu/mobstat/ct;

    invoke-direct {v0}, Lcom/baidu/mobstat/ct;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/ct;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    .line 26
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->b()V

    .line 27
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ct;
    .registers 1

    .line 22
    sget-object v0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/ct;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    .line 30
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->b(Ljava/lang/String;)V

    .line 33
    :cond_0
    return-void
.end method

.method private b()V
    .registers 3

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    const-class v0, Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_1
    :try_start_1
    const-class v0, Landroid/app/ActionBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 62
    :goto_2
    :try_start_2
    const-class v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 68
    :goto_3
    :try_start_3
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "B0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 74
    :goto_4
    :try_start_4
    const-class v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 80
    :goto_5
    :try_start_5
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    .line 86
    :goto_6
    :try_start_6
    const-string v0, "com.android.internal.policy.DecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7

    .line 93
    :goto_7
    :try_start_7
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    .line 99
    :goto_8
    :try_start_8
    const-class v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9

    .line 105
    :goto_9
    :try_start_9
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "E1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_a

    .line 111
    :goto_a
    :try_start_a
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_b

    .line 118
    :goto_b
    :try_start_b
    const-class v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_c

    .line 124
    :goto_c
    :try_start_c
    const-class v0, Landroid/widget/Gallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "G0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_d

    .line 130
    :goto_d
    :try_start_d
    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "G1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_e

    .line 136
    :goto_e
    :try_start_e
    const-class v0, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_f

    .line 142
    :goto_f
    :try_start_f
    const-class v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_10

    .line 148
    :goto_10
    :try_start_10
    const-class v0, Landroid/widget/ImageSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_11

    .line 154
    :goto_11
    :try_start_11
    const-class v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12

    .line 160
    :goto_12
    :try_start_12
    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_13

    .line 166
    :goto_13
    :try_start_13
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_14

    .line 172
    :goto_14
    :try_start_14
    const-class v0, Landroid/app/ListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "L2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_15

    .line 178
    :goto_15
    :try_start_15
    const-class v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "M0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_16

    .line 184
    :goto_16
    :try_start_16
    const-class v0, Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_17

    .line 190
    :goto_17
    :try_start_17
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_18

    .line 196
    :goto_18
    :try_start_18
    const-class v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_19

    .line 202
    :goto_19
    :try_start_19
    const-class v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_1a

    .line 208
    :goto_1a
    :try_start_1a
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1b

    .line 214
    :goto_1b
    :try_start_1b
    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1c

    .line 220
    :goto_1c
    :try_start_1c
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1d

    .line 226
    :goto_1d
    :try_start_1d
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1e

    .line 232
    :goto_1e
    :try_start_1e
    const-class v0, Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1f

    .line 238
    :goto_1f
    :try_start_1f
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_20

    .line 244
    :goto_20
    :try_start_20
    const-class v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_21

    .line 250
    :goto_21
    :try_start_21
    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_22

    .line 256
    :goto_22
    :try_start_22
    const-class v0, Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_23

    .line 262
    :goto_23
    :try_start_23
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_24

    .line 268
    :goto_24
    :try_start_24
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_25

    .line 274
    :goto_25
    :try_start_25
    const-class v0, Landroid/widget/TableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_26

    .line 280
    :goto_26
    :try_start_26
    const-class v0, Landroid/widget/TableRow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_27

    .line 286
    :goto_27
    :try_start_27
    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_28

    .line 292
    :goto_28
    :try_start_28
    const-class v0, Landroid/widget/TextSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_29

    .line 298
    :goto_29
    :try_start_29
    const-class v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_2a

    .line 304
    :goto_2a
    :try_start_2a
    const-class v0, Landroid/widget/Toast;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_2b

    .line 310
    :goto_2b
    :try_start_2b
    const-class v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T7"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_2c

    .line 316
    :goto_2c
    :try_start_2c
    const-class v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T8"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_2d

    .line 322
    :goto_2d
    :try_start_2d
    const-class v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T9"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_2e

    .line 328
    :goto_2e
    :try_start_2e
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_2f

    .line 334
    :goto_2f
    :try_start_2f
    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_30

    .line 340
    :goto_30
    :try_start_30
    const-class v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_31

    .line 346
    :goto_31
    :try_start_31
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_32

    .line 352
    :goto_32
    :try_start_32
    const-class v0, Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_33

    .line 358
    :goto_33
    :try_start_33
    const-class v0, Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_34

    .line 364
    :goto_34
    :try_start_34
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_35

    .line 370
    :goto_35
    :try_start_35
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_36

    .line 376
    :goto_36
    :try_start_36
    const-class v0, Landroid/webkit/WebViewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "W1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_0

    goto/16 :goto_0

    .line 377
    :catch_0
    move-exception v0

    .line 378
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 57
    :catch_2
    move-exception v0

    .line 58
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 63
    :catch_3
    move-exception v0

    .line 64
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 69
    :catch_4
    move-exception v0

    .line 70
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 75
    :catch_5
    move-exception v0

    .line 76
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 81
    :catch_6
    move-exception v0

    .line 82
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 88
    :catch_7
    move-exception v0

    .line 89
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 94
    :catch_8
    move-exception v0

    .line 95
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 100
    :catch_9
    move-exception v0

    .line 101
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 106
    :catch_a
    move-exception v0

    .line 107
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 112
    :catch_b
    move-exception v0

    .line 113
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 119
    :catch_c
    move-exception v0

    .line 120
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 125
    :catch_d
    move-exception v0

    .line 126
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 131
    :catch_e
    move-exception v0

    .line 132
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 137
    :catch_f
    move-exception v0

    .line 138
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 143
    :catch_10
    move-exception v0

    .line 144
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 149
    :catch_11
    move-exception v0

    .line 150
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 155
    :catch_12
    move-exception v0

    .line 156
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 161
    :catch_13
    move-exception v0

    .line 162
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 167
    :catch_14
    move-exception v0

    .line 168
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 173
    :catch_15
    move-exception v0

    .line 174
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 179
    :catch_16
    move-exception v0

    .line 180
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 185
    :catch_17
    move-exception v0

    .line 186
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 191
    :catch_18
    move-exception v0

    .line 192
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 197
    :catch_19
    move-exception v0

    .line 198
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 203
    :catch_1a
    move-exception v0

    .line 204
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 209
    :catch_1b
    move-exception v0

    .line 210
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 215
    :catch_1c
    move-exception v0

    .line 216
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 221
    :catch_1d
    move-exception v0

    .line 222
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 227
    :catch_1e
    move-exception v0

    .line 228
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 233
    :catch_1f
    move-exception v0

    .line 234
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 239
    :catch_20
    move-exception v0

    .line 240
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 245
    :catch_21
    move-exception v0

    .line 246
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 251
    :catch_22
    move-exception v0

    .line 252
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 257
    :catch_23
    move-exception v0

    .line 258
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 263
    :catch_24
    move-exception v0

    .line 264
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 269
    :catch_25
    move-exception v0

    .line 270
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 275
    :catch_26
    move-exception v0

    .line 276
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 281
    :catch_27
    move-exception v0

    .line 282
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 287
    :catch_28
    move-exception v0

    .line 288
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 293
    :catch_29
    move-exception v0

    .line 294
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 299
    :catch_2a
    move-exception v0

    .line 300
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 305
    :catch_2b
    move-exception v0

    .line 306
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 311
    :catch_2c
    move-exception v0

    .line 312
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 317
    :catch_2d
    move-exception v0

    .line 318
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 323
    :catch_2e
    move-exception v0

    .line 324
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 329
    :catch_2f
    move-exception v0

    .line 330
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 335
    :catch_30
    move-exception v0

    .line 336
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 341
    :catch_31
    move-exception v0

    .line 342
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 347
    :catch_32
    move-exception v0

    .line 348
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 353
    :catch_33
    move-exception v0

    .line 354
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 359
    :catch_34
    move-exception v0

    .line 360
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 365
    :catch_35
    move-exception v0

    .line 366
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 371
    :catch_36
    move-exception v0

    .line 372
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_36
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
