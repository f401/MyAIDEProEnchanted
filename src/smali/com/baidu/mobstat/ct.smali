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
    .locals 1

    .line 19
    new-instance v0, Lcom/baidu/mobstat/ct;

    invoke-direct {v0}, Lcom/baidu/mobstat/ct;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/ct;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    .line 26
    invoke-direct {p0}, Lcom/baidu/mobstat/ct;->b()V

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/ct;
    .locals 1

    .line 22
    sget-object v0, Lcom/baidu/mobstat/ct;->b:Lcom/baidu/mobstat/ct;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 391
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
    .locals 2

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

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 50
    :cond_0
    :try_start_0
    const-string v0, "AutoCompleteTextView"

    const-string v1, "A0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :goto_1
    :try_start_1
    const-string v0, "ActionBar"

    const-string v1, "A1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 62
    :goto_2
    :try_start_2
    const-string v0, "AlertDialog"

    const-string v1, "A2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 68
    :goto_3
    :try_start_3
    const-string v0, "Button"

    const-string v1, "B0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 74
    :goto_4
    :try_start_4
    const-string v0, "CheckBox"

    const-string v1, "C0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 80
    :goto_5
    :try_start_5
    const-string v0, "CheckedTextView"

    const-string v1, "C1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

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
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 93
    :goto_7
    :try_start_7
    const-class v0, Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    .line 99
    :goto_8
    :try_start_8
    const-string v0, "EditText"

    const-string v1, "E0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    .line 105
    :goto_9
    :try_start_9
    const-string v0, "ExpandableListView"

    const-string v1, "E1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 111
    :goto_a
    :try_start_a
    const-string v0, "FrameLayout"

    const-string v1, "F0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 118
    :goto_b
    :try_start_b
    const-class v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    .line 124
    :goto_c
    :try_start_c
    const-string v0, "Gallery"

    const-string v1, "G0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    .line 130
    :goto_d
    :try_start_d
    const-string v0, "GridView"

    const-string v1, "G1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_e

    .line 136
    :goto_e
    :try_start_e
    const-string v0, "HorizontalScrollView"

    const-string v1, "H0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_f

    .line 142
    :goto_f
    :try_start_f
    const-string v0, "ImageButton"

    const-string v1, "I0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_10

    .line 148
    :goto_10
    :try_start_10
    const-string v0, "ImageSwitcher"

    const-string v1, "I1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_11

    .line 154
    :goto_11
    :try_start_11
    const-string v0, "ImageView"

    const-string v1, "I2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_12

    .line 160
    :goto_12
    :try_start_12
    const-string v0, "LinearLayout"

    const-string v1, "L0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_13

    .line 166
    :goto_13
    :try_start_13
    const-string v0, "ListView"

    const-string v1, "L1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_14

    .line 172
    :goto_14
    :try_start_14
    const-string v0, "ListFragment"

    const-string v1, "L2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_15

    .line 178
    :goto_15
    :try_start_15
    const-string v0, "MultiAutoCompleteTextView"

    const-string v1, "M0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_16

    .line 184
    :goto_16
    :try_start_16
    const-class v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_17

    .line 190
    :goto_17
    :try_start_17
    const-string v0, "ProgressBar"

    const-string v1, "P0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_18

    .line 196
    :goto_18
    :try_start_18
    const-string v0, "RadioButton"

    const-string v1, "R0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_19

    .line 202
    :goto_19
    :try_start_19
    const-string v0, "RadioGroup"

    const-string v1, "R1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1a

    .line 208
    :goto_1a
    :try_start_1a
    const-string v0, "RatingBar"

    const-string v1, "R2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1b

    .line 214
    :goto_1b
    :try_start_1b
    const-string v0, "RelativeLayout"

    const-string v1, "R3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1c

    .line 220
    :goto_1c
    :try_start_1c
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1d

    .line 226
    :goto_1d
    :try_start_1d
    const-string v0, "ScrollView"

    const-string v1, "S0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1e

    .line 232
    :goto_1e
    :try_start_1e
    const-class v0, Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1f

    .line 238
    :goto_1f
    :try_start_1f
    const-string v0, "SeekBar"

    const-string v1, "S2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_20

    .line 244
    :goto_20
    :try_start_20
    const-string v0, "Spinner"

    const-string v1, "S3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_21

    .line 250
    :goto_21
    :try_start_21
    const-string v0, "Switch"

    const-string v1, "S4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_22

    .line 256
    :goto_22
    :try_start_22
    const-string v0, "SurfaceView"

    const-string v1, "S5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_23

    .line 262
    :goto_23
    :try_start_23
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_24

    .line 268
    :goto_24
    :try_start_24
    const-string v0, "TabHost"

    const-string v1, "T0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_25

    .line 274
    :goto_25
    :try_start_25
    const-string v0, "TableLayout"

    const-string v1, "T1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_26

    .line 280
    :goto_26
    :try_start_26
    const-string v0, "TableRow"

    const-string v1, "T2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_27

    .line 286
    :goto_27
    :try_start_27
    const-string v0, "TabWidget"

    const-string v1, "T3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_28

    .line 292
    :goto_28
    :try_start_28
    const-string v0, "TextSwitcher"

    const-string v1, "T4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_29

    .line 298
    :goto_29
    :try_start_29
    const-string v0, "TextView"

    const-string v1, "T5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_2a

    .line 304
    :goto_2a
    :try_start_2a
    const-string v0, "Toast"

    const-string v1, "T6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2b

    .line 310
    :goto_2b
    :try_start_2b
    const-string v0, "ToggleButton"

    const-string v1, "T7"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2c

    .line 316
    :goto_2c
    :try_start_2c
    const-string v0, "TextureView"

    const-string v1, "T8"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2d

    .line 322
    :goto_2d
    :try_start_2d
    const-class v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T9"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2e

    .line 328
    :goto_2e
    :try_start_2e
    const-string v0, "View"

    const-string v1, "V0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2f

    .line 334
    :goto_2f
    :try_start_2f
    const-string v0, "ViewGroup"

    const-string v1, "V1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_30

    .line 340
    :goto_30
    :try_start_30
    const-string v0, "ViewStub"

    const-string v1, "V2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_31

    .line 346
    :goto_31
    :try_start_31
    const-string v0, "VideoView"

    const-string v1, "V3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_32

    .line 352
    :goto_32
    :try_start_32
    const-string v0, "ViewSwitcher"

    const-string v1, "V4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_33

    .line 358
    :goto_33
    :try_start_33
    const-string v0, "ViewFlipper"

    const-string v1, "V5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_34

    .line 364
    :goto_34
    :try_start_34
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_35

    .line 370
    :goto_35
    :try_start_35
    const-string v0, "WebView"

    const-string v1, "W0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_36

    .line 376
    :goto_36
    :try_start_36
    const-string v0, "WebViewFragment"

    const-string v1, "W1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 378
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 50
    :catchall_1
    move-exception v0

    .line 52
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 56
    :catchall_2
    move-exception v0

    .line 58
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 62
    :catchall_3
    move-exception v0

    .line 64
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 68
    :catchall_4
    move-exception v0

    .line 70
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 74
    :catchall_5
    move-exception v0

    .line 76
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 80
    :catchall_6
    move-exception v0

    .line 82
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 87
    :catchall_7
    move-exception v0

    .line 89
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 93
    :catchall_8
    move-exception v0

    .line 95
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 99
    :catchall_9
    move-exception v0

    .line 101
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 105
    :catchall_a
    move-exception v0

    .line 107
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 111
    :catchall_b
    move-exception v0

    .line 113
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 118
    :catchall_c
    move-exception v0

    .line 120
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 124
    :catchall_d
    move-exception v0

    .line 126
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 130
    :catchall_e
    move-exception v0

    .line 132
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 136
    :catchall_f
    move-exception v0

    .line 138
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 142
    :catchall_10
    move-exception v0

    .line 144
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 148
    :catchall_11
    move-exception v0

    .line 150
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 154
    :catchall_12
    move-exception v0

    .line 156
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 160
    :catchall_13
    move-exception v0

    .line 162
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 166
    :catchall_14
    move-exception v0

    .line 168
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 172
    :catchall_15
    move-exception v0

    .line 174
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 178
    :catchall_16
    move-exception v0

    .line 180
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 184
    :catchall_17
    move-exception v0

    .line 186
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 190
    :catchall_18
    move-exception v0

    .line 192
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 196
    :catchall_19
    move-exception v0

    .line 198
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 202
    :catchall_1a
    move-exception v0

    .line 204
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 208
    :catchall_1b
    move-exception v0

    .line 210
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 214
    :catchall_1c
    move-exception v0

    .line 216
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 220
    :catchall_1d
    move-exception v0

    .line 222
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 226
    :catchall_1e
    move-exception v0

    .line 228
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 232
    :catchall_1f
    move-exception v0

    .line 234
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 238
    :catchall_20
    move-exception v0

    .line 240
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 244
    :catchall_21
    move-exception v0

    .line 246
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 250
    :catchall_22
    move-exception v0

    .line 252
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 256
    :catchall_23
    move-exception v0

    .line 258
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 262
    :catchall_24
    move-exception v0

    .line 264
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 268
    :catchall_25
    move-exception v0

    .line 270
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 274
    :catchall_26
    move-exception v0

    .line 276
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 280
    :catchall_27
    move-exception v0

    .line 282
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 286
    :catchall_28
    move-exception v0

    .line 288
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 292
    :catchall_29
    move-exception v0

    .line 294
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 298
    :catchall_2a
    move-exception v0

    .line 300
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 304
    :catchall_2b
    move-exception v0

    .line 306
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 310
    :catchall_2c
    move-exception v0

    .line 312
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 316
    :catchall_2d
    move-exception v0

    .line 318
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 322
    :catchall_2e
    move-exception v0

    .line 324
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 328
    :catchall_2f
    move-exception v0

    .line 330
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 334
    :catchall_30
    move-exception v0

    .line 336
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 340
    :catchall_31
    move-exception v0

    .line 342
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 346
    :catchall_32
    move-exception v0

    .line 348
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 352
    :catchall_33
    move-exception v0

    .line 354
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 358
    :catchall_34
    move-exception v0

    .line 360
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 364
    :catchall_35
    move-exception v0

    .line 366
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 370
    :catchall_36
    move-exception v0

    .line 372
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_36
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
