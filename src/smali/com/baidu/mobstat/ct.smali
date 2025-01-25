.class public Lcom/baidu/mobstat/ct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/baidu/mobstat/ct;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
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

    if-eqz v0, :cond_7

    return-void

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 391
    :cond_10
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 3

    .line 30
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 31
    invoke-static {}, Lcom/baidu/mobstat/dc;->c()Lcom/baidu/mobstat/dc;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/dc;->b(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method private b()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 50
    :cond_9
    :try_start_9
    const-string v0, "AutoCompleteTextView"

    const-string v1, "A0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v0

    .line 52
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 56
    :goto_15
    :try_start_15
    const-string v0, "ActionBar"

    const-string v1, "A1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception v0

    .line 58
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 62
    :goto_21
    :try_start_21
    const-string v0, "AlertDialog"

    const-string v1, "A2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v0

    .line 64
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 68
    :goto_2d
    :try_start_2d
    const-string v0, "Button"

    const-string v1, "B0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v0

    .line 70
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 74
    :goto_39
    :try_start_39
    const-string v0, "CheckBox"

    const-string v1, "C0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v0

    .line 76
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 80
    :goto_45
    :try_start_45
    const-string v0, "CheckedTextView"

    const-string v1, "C1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception v0

    .line 82
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 86
    :goto_51
    :try_start_51
    const-string v0, "com.android.internal.policy.DecorView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_51 .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v0

    .line 89
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 93
    :goto_65
    :try_start_65
    const-class v0, Landroid/support/v4/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "D1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_71

    goto :goto_75

    :catchall_71
    move-exception v0

    .line 95
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 99
    :goto_75
    :try_start_75
    const-string v0, "EditText"

    const-string v1, "E0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_7d

    goto :goto_81

    :catchall_7d
    move-exception v0

    .line 101
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 105
    :goto_81
    :try_start_81
    const-string v0, "ExpandableListView"

    const-string v1, "E1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v0

    .line 107
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 111
    :goto_8d
    :try_start_8d
    const-string v0, "FrameLayout"

    const-string v1, "F0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v0

    .line 113
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 118
    :goto_99
    :try_start_99
    const-class v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "F1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catchall {:try_start_99 .. :try_end_a4} :catchall_a5

    goto :goto_a9

    :catchall_a5
    move-exception v0

    .line 120
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 124
    :goto_a9
    :try_start_a9
    const-string v0, "Gallery"

    const-string v1, "G0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_a9 .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception v0

    .line 126
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 130
    :goto_b5
    :try_start_b5
    const-string v0, "GridView"

    const-string v1, "G1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_bd

    goto :goto_c1

    :catchall_bd
    move-exception v0

    .line 132
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 136
    :goto_c1
    :try_start_c1
    const-string v0, "HorizontalScrollView"

    const-string v1, "H0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c8
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception v0

    .line 138
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 142
    :goto_cd
    :try_start_cd
    const-string v0, "ImageButton"

    const-string v1, "I0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_d5

    goto :goto_d9

    :catchall_d5
    move-exception v0

    .line 144
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 148
    :goto_d9
    :try_start_d9
    const-string v0, "ImageSwitcher"

    const-string v1, "I1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_e1

    goto :goto_e5

    :catchall_e1
    move-exception v0

    .line 150
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 154
    :goto_e5
    :try_start_e5
    const-string v0, "ImageView"

    const-string v1, "I2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_ed

    goto :goto_f1

    :catchall_ed
    move-exception v0

    .line 156
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 160
    :goto_f1
    :try_start_f1
    const-string v0, "LinearLayout"

    const-string v1, "L0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_f9

    goto :goto_fd

    :catchall_f9
    move-exception v0

    .line 162
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 166
    :goto_fd
    :try_start_fd
    const-string v0, "ListView"

    const-string v1, "L1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_104
    .catchall {:try_start_fd .. :try_end_104} :catchall_105

    goto :goto_109

    :catchall_105
    move-exception v0

    .line 168
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 172
    :goto_109
    :try_start_109
    const-string v0, "ListFragment"

    const-string v1, "L2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_110
    .catchall {:try_start_109 .. :try_end_110} :catchall_111

    goto :goto_115

    :catchall_111
    move-exception v0

    .line 174
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 178
    :goto_115
    :try_start_115
    const-string v0, "MultiAutoCompleteTextView"

    const-string v1, "M0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_115 .. :try_end_11c} :catchall_11d

    goto :goto_121

    :catchall_11d
    move-exception v0

    .line 180
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 184
    :goto_121
    :try_start_121
    const-class v0, Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "N0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_12d

    goto :goto_131

    :catchall_12d
    move-exception v0

    .line 186
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 190
    :goto_131
    :try_start_131
    const-string v0, "ProgressBar"

    const-string v1, "P0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_131 .. :try_end_138} :catchall_139

    goto :goto_13d

    :catchall_139
    move-exception v0

    .line 192
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 196
    :goto_13d
    :try_start_13d
    const-string v0, "RadioButton"

    const-string v1, "R0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_144
    .catchall {:try_start_13d .. :try_end_144} :catchall_145

    goto :goto_149

    :catchall_145
    move-exception v0

    .line 198
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 202
    :goto_149
    :try_start_149
    const-string v0, "RadioGroup"

    const-string v1, "R1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_150
    .catchall {:try_start_149 .. :try_end_150} :catchall_151

    goto :goto_155

    :catchall_151
    move-exception v0

    .line 204
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 208
    :goto_155
    :try_start_155
    const-string v0, "RatingBar"

    const-string v1, "R2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15c
    .catchall {:try_start_155 .. :try_end_15c} :catchall_15d

    goto :goto_161

    :catchall_15d
    move-exception v0

    .line 210
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 214
    :goto_161
    :try_start_161
    const-string v0, "RelativeLayout"

    const-string v1, "R3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_168
    .catchall {:try_start_161 .. :try_end_168} :catchall_169

    goto :goto_16d

    :catchall_169
    move-exception v0

    .line 216
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 220
    :goto_16d
    :try_start_16d
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_178
    .catchall {:try_start_16d .. :try_end_178} :catchall_179

    goto :goto_17d

    :catchall_179
    move-exception v0

    .line 222
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 226
    :goto_17d
    :try_start_17d
    const-string v0, "ScrollView"

    const-string v1, "S0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_184
    .catchall {:try_start_17d .. :try_end_184} :catchall_185

    goto :goto_189

    :catchall_185
    move-exception v0

    .line 228
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 232
    :goto_189
    :try_start_189
    const-class v0, Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_194
    .catchall {:try_start_189 .. :try_end_194} :catchall_195

    goto :goto_199

    :catchall_195
    move-exception v0

    .line 234
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 238
    :goto_199
    :try_start_199
    const-string v0, "SeekBar"

    const-string v1, "S2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a0
    .catchall {:try_start_199 .. :try_end_1a0} :catchall_1a1

    goto :goto_1a5

    :catchall_1a1
    move-exception v0

    .line 240
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 244
    :goto_1a5
    :try_start_1a5
    const-string v0, "Spinner"

    const-string v1, "S3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ac
    .catchall {:try_start_1a5 .. :try_end_1ac} :catchall_1ad

    goto :goto_1b1

    :catchall_1ad
    move-exception v0

    .line 246
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 250
    :goto_1b1
    :try_start_1b1
    const-string v0, "Switch"

    const-string v1, "S4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b8
    .catchall {:try_start_1b1 .. :try_end_1b8} :catchall_1b9

    goto :goto_1bd

    :catchall_1b9
    move-exception v0

    .line 252
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 256
    :goto_1bd
    :try_start_1bd
    const-string v0, "SurfaceView"

    const-string v1, "S5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c4
    .catchall {:try_start_1bd .. :try_end_1c4} :catchall_1c5

    goto :goto_1c9

    :catchall_1c5
    move-exception v0

    .line 258
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 262
    :goto_1c9
    :try_start_1c9
    const-class v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "S6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d4
    .catchall {:try_start_1c9 .. :try_end_1d4} :catchall_1d5

    goto :goto_1d9

    :catchall_1d5
    move-exception v0

    .line 264
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 268
    :goto_1d9
    :try_start_1d9
    const-string v0, "TabHost"

    const-string v1, "T0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e0
    .catchall {:try_start_1d9 .. :try_end_1e0} :catchall_1e1

    goto :goto_1e5

    :catchall_1e1
    move-exception v0

    .line 270
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 274
    :goto_1e5
    :try_start_1e5
    const-string v0, "TableLayout"

    const-string v1, "T1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ec
    .catchall {:try_start_1e5 .. :try_end_1ec} :catchall_1ed

    goto :goto_1f1

    :catchall_1ed
    move-exception v0

    .line 276
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 280
    :goto_1f1
    :try_start_1f1
    const-string v0, "TableRow"

    const-string v1, "T2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f8
    .catchall {:try_start_1f1 .. :try_end_1f8} :catchall_1f9

    goto :goto_1fd

    :catchall_1f9
    move-exception v0

    .line 282
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 286
    :goto_1fd
    :try_start_1fd
    const-string v0, "TabWidget"

    const-string v1, "T3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_204
    .catchall {:try_start_1fd .. :try_end_204} :catchall_205

    goto :goto_209

    :catchall_205
    move-exception v0

    .line 288
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 292
    :goto_209
    :try_start_209
    const-string v0, "TextSwitcher"

    const-string v1, "T4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_210
    .catchall {:try_start_209 .. :try_end_210} :catchall_211

    goto :goto_215

    :catchall_211
    move-exception v0

    .line 294
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 298
    :goto_215
    :try_start_215
    const-string v0, "TextView"

    const-string v1, "T5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21c
    .catchall {:try_start_215 .. :try_end_21c} :catchall_21d

    goto :goto_221

    :catchall_21d
    move-exception v0

    .line 300
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 304
    :goto_221
    :try_start_221
    const-string v0, "Toast"

    const-string v1, "T6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_228
    .catchall {:try_start_221 .. :try_end_228} :catchall_229

    goto :goto_22d

    :catchall_229
    move-exception v0

    .line 306
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 310
    :goto_22d
    :try_start_22d
    const-string v0, "ToggleButton"

    const-string v1, "T7"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_234
    .catchall {:try_start_22d .. :try_end_234} :catchall_235

    goto :goto_239

    :catchall_235
    move-exception v0

    .line 312
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 316
    :goto_239
    :try_start_239
    const-string v0, "TextureView"

    const-string v1, "T8"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_240
    .catchall {:try_start_239 .. :try_end_240} :catchall_241

    goto :goto_245

    :catchall_241
    move-exception v0

    .line 318
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 322
    :goto_245
    :try_start_245
    const-class v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T9"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_250
    .catchall {:try_start_245 .. :try_end_250} :catchall_251

    goto :goto_255

    :catchall_251
    move-exception v0

    .line 324
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 328
    :goto_255
    :try_start_255
    const-string v0, "View"

    const-string v1, "V0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25c
    .catchall {:try_start_255 .. :try_end_25c} :catchall_25d

    goto :goto_261

    :catchall_25d
    move-exception v0

    .line 330
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 334
    :goto_261
    :try_start_261
    const-string v0, "ViewGroup"

    const-string v1, "V1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_268
    .catchall {:try_start_261 .. :try_end_268} :catchall_269

    goto :goto_26d

    :catchall_269
    move-exception v0

    .line 336
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 340
    :goto_26d
    :try_start_26d
    const-string v0, "ViewStub"

    const-string v1, "V2"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_274
    .catchall {:try_start_26d .. :try_end_274} :catchall_275

    goto :goto_279

    :catchall_275
    move-exception v0

    .line 342
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 346
    :goto_279
    :try_start_279
    const-string v0, "VideoView"

    const-string v1, "V3"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_280
    .catchall {:try_start_279 .. :try_end_280} :catchall_281

    goto :goto_285

    :catchall_281
    move-exception v0

    .line 348
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 352
    :goto_285
    :try_start_285
    const-string v0, "ViewSwitcher"

    const-string v1, "V4"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28c
    .catchall {:try_start_285 .. :try_end_28c} :catchall_28d

    goto :goto_291

    :catchall_28d
    move-exception v0

    .line 354
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 358
    :goto_291
    :try_start_291
    const-string v0, "ViewFlipper"

    const-string v1, "V5"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_298
    .catchall {:try_start_291 .. :try_end_298} :catchall_299

    goto :goto_29d

    :catchall_299
    move-exception v0

    .line 360
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 364
    :goto_29d
    :try_start_29d
    const-class v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "V6"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a8
    .catchall {:try_start_29d .. :try_end_2a8} :catchall_2a9

    goto :goto_2ad

    :catchall_2a9
    move-exception v0

    .line 366
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 370
    :goto_2ad
    :try_start_2ad
    const-string v0, "WebView"

    const-string v1, "W0"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b4
    .catchall {:try_start_2ad .. :try_end_2b4} :catchall_2b5

    goto :goto_2b9

    :catchall_2b5
    move-exception v0

    .line 372
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    .line 376
    :goto_2b9
    :try_start_2b9
    const-string v0, "WebViewFragment"

    const-string v1, "W1"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c0
    .catchall {:try_start_2b9 .. :try_end_2c0} :catchall_2c1

    goto :goto_2c5

    :catchall_2c1
    move-exception v0

    .line 378
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/ct;->a(Ljava/lang/Throwable;)V

    :goto_2c5
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/baidu/mobstat/ct;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
