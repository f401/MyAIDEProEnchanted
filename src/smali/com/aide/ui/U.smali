.class public Lcom/aide/ui/U;
.super Ljava/lang/Object;
.source "U.java"


# static fields
.field private static DW:I = -0x1

.field public static FH:Lcom/aide/ui/U; = null

.field private static Hw:Lcom/aide/ui/MainActivity; = null

.field private static VH:Landroid/content/Context; = null

.field private static Zo:Landroid/os/Handler; = null

.field private static gn:Ljava/lang/Boolean; = null

.field public static j6:Ljava/lang/String; = ""

.field private static tp:Z

.field private static u7:Lcom/aide/ui/trainer/e;

.field private static v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BT:Lcom/aide/ui/scm/ua;

.field private J0:Labcd/Xj;

.field private J8:Labcd/ck;

.field private KD:Lcom/aide/ui/build/android/Q;

.field private Mr:Labcd/Dl;

.field private P8:Lcom/aide/ui/build/android/O;

.field private QX:Lcom/aide/ui/build/d;

.field private SI:Labcd/lk;

.field private Sf:Labcd/we;

.field private U2:Labcd/Ak;

.field private Ws:Labcd/Nk;

.field private XL:Labcd/Zk;

.field private a8:Labcd/mk;

.field private aM:Labcd/Kk;

.field private cb:Labcd/Cl;

.field private cn:Labcd/Pk;

.field private dx:Labcd/vj;

.field private ef:Labcd/Jk;

.field private ei:Labcd/Kj;

.field private er:Labcd/Bk;

.field private gW:Labcd/Gk;

.field private j3:Labcd/Sj;

.field private lg:Labcd/ul;

.field private nw:Labcd/Ek;

.field private rN:Labcd/ol;

.field private ro:Labcd/yk;

.field private sG:Labcd/el;

.field private sh:Labcd/vl;

.field private vy:Labcd/Ji;

.field private yS:Labcd/Sk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aide/ui/U;->v5:Ljava/util/List;

    .line 113
    sget-object v0, Lcom/aide/engine/service/Native;->j6:Lcom/aide/engine/service/Native;

    invoke-virtual {v0}, Lcom/aide/engine/service/Native;->isX86()Z

    move-result v0

    sput-boolean v0, Lcom/aide/ui/U;->tp:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Labcd/Xj;

    invoke-direct {v0}, Labcd/Xj;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->J0:Labcd/Xj;

    .line 126
    new-instance v0, Labcd/ck;

    invoke-direct {v0}, Labcd/ck;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->J8:Labcd/ck;

    .line 127
    new-instance v0, Labcd/Nk;

    invoke-direct {v0}, Labcd/Nk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->Ws:Labcd/Nk;

    .line 128
    new-instance v0, Lcom/aide/ui/build/d;

    invoke-direct {v0}, Lcom/aide/ui/build/d;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->QX:Lcom/aide/ui/build/d;

    .line 129
    new-instance v0, Labcd/Zk;

    invoke-direct {v0}, Labcd/Zk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->XL:Labcd/Zk;

    .line 130
    new-instance v0, Labcd/Kk;

    invoke-direct {v0}, Labcd/Kk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->aM:Labcd/Kk;

    .line 131
    new-instance v0, Labcd/Sj;

    invoke-direct {v0}, Labcd/Sj;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->j3:Labcd/Sj;

    .line 132
    new-instance v0, Labcd/Dl;

    invoke-direct {v0}, Labcd/Dl;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->Mr:Labcd/Dl;

    .line 133
    new-instance v0, Labcd/Ak;

    invoke-direct {v0}, Labcd/Ak;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->U2:Labcd/Ak;

    .line 134
    new-instance v0, Labcd/mk;

    invoke-direct {v0}, Labcd/mk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->a8:Labcd/mk;

    .line 135
    new-instance v0, Labcd/ul;

    invoke-direct {v0}, Labcd/ul;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->lg:Labcd/ul;

    .line 136
    new-instance v0, Labcd/ol;

    invoke-direct {v0}, Labcd/ol;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->rN:Labcd/ol;

    .line 137
    new-instance v0, Labcd/Bk;

    invoke-direct {v0}, Labcd/Bk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->er:Labcd/Bk;

    .line 138
    new-instance v0, Labcd/Sk;

    invoke-direct {v0}, Labcd/Sk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->yS:Labcd/Sk;

    .line 139
    new-instance v0, Labcd/Gk;

    invoke-direct {v0}, Labcd/Gk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->gW:Labcd/Gk;

    .line 140
    new-instance v0, Lcom/aide/ui/scm/ua;

    invoke-direct {v0}, Lcom/aide/ui/scm/ua;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->BT:Lcom/aide/ui/scm/ua;

    .line 141
    new-instance v0, Labcd/Ji;

    invoke-direct {v0}, Labcd/Ji;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->vy:Labcd/Ji;

    .line 142
    new-instance v0, Lcom/aide/ui/build/android/O;

    invoke-direct {v0}, Lcom/aide/ui/build/android/O;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->P8:Lcom/aide/ui/build/android/O;

    .line 143
    new-instance v0, Labcd/Kj;

    invoke-direct {v0}, Labcd/Kj;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->ei:Labcd/Kj;

    .line 144
    new-instance v0, Labcd/Ek;

    invoke-direct {v0}, Labcd/Ek;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->nw:Labcd/Ek;

    .line 145
    new-instance v0, Labcd/lk;

    invoke-direct {v0}, Labcd/lk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->SI:Labcd/lk;

    .line 146
    new-instance v0, Lcom/aide/ui/build/android/Q;

    invoke-direct {v0}, Lcom/aide/ui/build/android/Q;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->KD:Lcom/aide/ui/build/android/Q;

    .line 147
    new-instance v0, Labcd/yk;

    invoke-direct {v0}, Labcd/yk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->ro:Labcd/yk;

    .line 148
    new-instance v0, Labcd/Pk;

    invoke-direct {v0}, Labcd/Pk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->cn:Labcd/Pk;

    .line 149
    new-instance v0, Labcd/vl;

    invoke-direct {v0}, Labcd/vl;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->sh:Labcd/vl;

    .line 150
    new-instance v0, Labcd/Cl;

    invoke-direct {v0}, Labcd/Cl;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->cb:Labcd/Cl;

    .line 151
    new-instance v0, Labcd/vj;

    invoke-direct {v0}, Labcd/vj;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->dx:Labcd/vj;

    .line 152
    new-instance v0, Labcd/el;

    invoke-direct {v0}, Labcd/el;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->sG:Labcd/el;

    .line 153
    new-instance v0, Labcd/Jk;

    invoke-direct {v0}, Labcd/Jk;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->ef:Labcd/Jk;

    .line 154
    new-instance v0, Labcd/we;

    invoke-direct {v0}, Labcd/we;-><init>()V

    iput-object v0, p0, Lcom/aide/ui/U;->Sf:Labcd/we;

    return-void
.end method

.method public static BT()Labcd/el;
    .registers 1

    .line 160
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->sG:Labcd/el;

    return-object v0
.end method

.method public static DW()Labcd/vj;
    .registers 1

    .line 166
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->dx:Labcd/vj;

    return-object v0
.end method

.method public static DW(Landroid/app/Activity;)V
    .registers 2

    .line 172
    sget-object v0, Lcom/aide/ui/U;->v5:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private static DW(Ljava/lang/String;)V
    .registers 2

    .line 178
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    if-nez v0, :cond_85

    .line 179
    const-string v0, "ServiceContainer.init"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/aide/ui/U;

    invoke-direct {v0}, Lcom/aide/ui/U;-><init>()V

    sput-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    .line 182
    iget-object v0, v0, Lcom/aide/ui/U;->aM:Labcd/Kk;

    invoke-virtual {v0}, Labcd/Kk;->j6()V

    .line 183
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->QX:Lcom/aide/ui/build/d;

    invoke-virtual {v0}, Lcom/aide/ui/build/d;->v5()V

    .line 184
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->BT:Lcom/aide/ui/scm/ua;

    invoke-virtual {v0}, Lcom/aide/ui/scm/ua;->Zo()V

    .line 185
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->Ws:Labcd/Nk;

    invoke-virtual {v0}, Labcd/Nk;->Hw()V

    .line 186
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->dx:Labcd/vj;

    invoke-virtual {v0}, Labcd/vj;->VH()V

    .line 187
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->XL:Labcd/Zk;

    invoke-virtual {v0, p0}, Labcd/Zk;->Ws(Ljava/lang/String;)V

    .line 188
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->j3:Labcd/Sj;

    invoke-virtual {p0}, Labcd/Sj;->FH()V

    .line 189
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->Mr:Labcd/Dl;

    invoke-virtual {p0}, Labcd/Dl;->j6()V

    .line 190
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->er:Labcd/Bk;

    invoke-virtual {p0}, Labcd/Bk;->j6()V

    .line 191
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->vy:Labcd/Ji;

    invoke-virtual {p0}, Labcd/Ji;->Zo()V

    .line 192
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->nw:Labcd/Ek;

    invoke-virtual {p0}, Labcd/Ek;->FH()V

    .line 193
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->gW:Labcd/Gk;

    invoke-virtual {p0}, Labcd/Gk;->Hw()V

    .line 194
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->ro:Labcd/yk;

    invoke-virtual {p0}, Labcd/yk;->Zo()V

    .line 195
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->cn:Labcd/Pk;

    invoke-virtual {p0}, Labcd/Pk;->DW()V

    .line 196
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->sh:Labcd/vl;

    invoke-virtual {p0}, Labcd/vl;->j6()V

    .line 197
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->cb:Labcd/Cl;

    invoke-virtual {p0}, Labcd/Cl;->Mr()V

    .line 198
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->Sf:Labcd/we;

    invoke-virtual {p0}, Labcd/we;->DW()V

    :cond_85
    return-void
.end method

.method public static EQ()Labcd/Xj;
    .registers 1

    .line 205
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->J0:Labcd/Xj;

    return-object v0
.end method

.method public static FH()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {}, Lcom/aide/ui/U;->ef()Z

    move-result v0

    const-string v1, "AIDL"

    const-string v2, "C++"

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string v6, "XML"

    const/4 v7, 0x2

    const-string v8, "Java Binary"

    const/4 v9, 0x1

    const-string v10, "Java"

    const/4 v11, 0x0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v12, "com.aide.phonegap"

    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v12, "com.aide.web"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 211
    new-array v0, v3, [Ljava/lang/String;

    aput-object v10, v0, v11

    aput-object v8, v0, v9

    aput-object v6, v0, v7

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 213
    :cond_3b
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    aput-object v10, v0, v11

    aput-object v8, v0, v9

    aput-object v6, v0, v7

    const-string v6, "HTML"

    aput-object v6, v0, v5

    const-string v5, "Css"

    aput-object v5, v0, v4

    const-string v4, "JavaScript"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "DTD"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static Hw()[Labcd/IProject;
    .registers 3

    .line 219
    const/4 v0, 0x6

    new-array v0, v0, [Labcd/IProject;

    const/4 v1, 0x0

    invoke-static {}, Lio/github/zeroaicy/aide/extend/ZeroAicyExtensionInterface;->getAndroidProject()Labcd/gj;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Labcd/uj;

    invoke-direct {v1}, Labcd/uj;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Labcd/rj;

    invoke-direct {v1}, Labcd/rj;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Labcd/EclipseJavaProject;

    invoke-direct {v1}, Labcd/EclipseJavaProject;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/aide/ui/NativeExecutableProject;

    invoke-direct {v1}, Lcom/aide/ui/NativeExecutableProject;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Labcd/nj;

    invoke-direct {v1}, Labcd/nj;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static J0()Labcd/lk;
    .registers 1

    .line 223
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->SI:Labcd/lk;

    return-object v0
.end method

.method public static J8()Labcd/mk;
    .registers 1

    .line 228
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->a8:Labcd/mk;

    return-object v0
.end method

.method public static KD()Labcd/Dl;
    .registers 1

    .line 234
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->Mr:Labcd/Dl;

    return-object v0
.end method

.method public static Mr()Ljava/lang/String;
    .registers 1

    .line 240
    invoke-static {}, Lcom/aide/ui/aa;->BT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static P8()Labcd/ol;
    .registers 1

    .line 246
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->rN:Labcd/ol;

    return-object v0
.end method

.method public static QX()Labcd/yk;
    .registers 1

    .line 252
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->ro:Labcd/yk;

    return-object v0
.end method

.method public static SI()Labcd/Cl;
    .registers 1

    .line 258
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->cb:Labcd/Cl;

    return-object v0
.end method

.method public static Sf()V
    .registers 2

    .line 264
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    if-eqz v0, :cond_69

    .line 265
    const-string v0, "ServiceContainer.shutdown"

    invoke-static {v0}, Lcom/aide/common/AIDELog;->I(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App has been shut down - pid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->J0:Labcd/Xj;

    invoke-virtual {v0}, Labcd/Xj;->u7()V

    .line 268
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->J0:Labcd/Xj;

    invoke-virtual {v0}, Labcd/Xj;->J8()V

    .line 269
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->J8:Labcd/ck;

    invoke-virtual {v0}, Labcd/ck;->tp()V

    .line 270
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->j3:Labcd/Sj;

    invoke-virtual {v0}, Labcd/Sj;->Hw()V

    .line 271
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->gW:Labcd/Gk;

    invoke-virtual {v0}, Labcd/Gk;->v5()V

    .line 272
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->vy:Labcd/Ji;

    invoke-virtual {v0}, Labcd/Ji;->tp()V

    .line 273
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->nw:Labcd/Ek;

    invoke-virtual {v0}, Labcd/Ek;->XL()V

    .line 274
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->ro:Labcd/yk;

    invoke-virtual {v0}, Labcd/yk;->VH()V

    .line 275
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->cn:Labcd/Pk;

    invoke-virtual {v0}, Labcd/Pk;->FH()V

    .line 276
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object v0, v0, Lcom/aide/ui/U;->sh:Labcd/vl;

    invoke-virtual {v0}, Labcd/vl;->DW()V

    .line 277
    const/4 v0, 0x0

    sput-object v0, Lcom/aide/ui/U;->Hw:Lcom/aide/ui/MainActivity;

    .line 278
    sput-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    :cond_69
    return-void
.end method

.method public static U2()Labcd/Ek;
    .registers 1

    .line 284
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->nw:Labcd/Ek;

    return-object v0
.end method

.method public static VH()Landroid/app/Activity;
    .registers 2

    .line 288
    sget-object v0, Lcom/aide/ui/U;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/aide/ui/U;->Hw:Lcom/aide/ui/MainActivity;

    goto :goto_19

    :cond_b
    sget-object v0, Lcom/aide/ui/U;->v5:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_19
    return-object v0
.end method

.method public static Ws()Lcom/aide/ui/scm/ua;
    .registers 1

    .line 292
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->BT:Lcom/aide/ui/scm/ua;

    return-object v0
.end method

.method public static XL()Labcd/Ak;
    .registers 1

    .line 297
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->U2:Labcd/Ak;

    return-object v0
.end method

.method public static Zo()Landroid/content/Context;
    .registers 1

    .line 303
    sget-object v0, Lcom/aide/ui/U;->VH:Landroid/content/Context;

    return-object v0
.end method

.method public static a8()Labcd/Gk;
    .registers 1

    .line 309
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->gW:Labcd/Gk;

    return-object v0
.end method

.method public static aM()Lcom/aide/ui/build/android/O;
    .registers 1

    .line 315
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->P8:Lcom/aide/ui/build/android/O;

    return-object v0
.end method

.method public static cb()Z
    .registers 2

    .line 321
    sget-object v0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    const-string v1, "com.aide.trainer."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static cn()Z
    .registers 1

    .line 327
    sget-boolean v0, Lcom/aide/ui/U;->tp:Z

    return v0
.end method

.method public static dx()Z
    .registers 3

    .line 333
    invoke-static {}, Lcom/aide/ui/U;->cb()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 336
    :cond_8
    sget-object v0, Lcom/aide/ui/U;->gn:Ljava/lang/Boolean;

    if-nez v0, :cond_23

    .line 337
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TrainerMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/aide/ui/U;->gn:Ljava/lang/Boolean;

    .line 339
    :cond_23
    sget-object v0, Lcom/aide/ui/U;->gn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static ef()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method

.method public static ei()Lcom/aide/ui/trainer/e;
    .registers 1

    .line 352
    sget-object v0, Lcom/aide/ui/U;->u7:Lcom/aide/ui/trainer/e;

    if-nez v0, :cond_b

    .line 353
    new-instance v0, Lcom/aide/ui/trainer/e;

    invoke-direct {v0}, Lcom/aide/ui/trainer/e;-><init>()V

    sput-object v0, Lcom/aide/ui/U;->u7:Lcom/aide/ui/trainer/e;

    .line 355
    :cond_b
    sget-object v0, Lcom/aide/ui/U;->u7:Lcom/aide/ui/trainer/e;

    return-object v0
.end method

.method public static er()Labcd/Nk;
    .registers 1

    .line 361
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->Ws:Labcd/Nk;

    return-object v0
.end method

.method public static gW()Labcd/Sk;
    .registers 1

    .line 367
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->yS:Labcd/Sk;

    return-object v0
.end method

.method public static gn()Lcom/aide/ui/debugger/Debugger;
    .registers 1

    .line 373
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/aide/ui/debugger/Debugger;->j6(Landroid/content/Context;)Lcom/aide/ui/debugger/Debugger;

    move-result-object v0

    return-object v0
.end method

.method public static j3()Labcd/Bk;
    .registers 1

    .line 379
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->er:Labcd/Bk;

    return-object v0
.end method

.method public static j6()Labcd/we;
    .registers 1

    .line 385
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->Sf:Labcd/we;

    return-object v0
.end method

.method public static varargs j6(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 391
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j6(Landroid/app/Activity;)V
    .registers 3

    .line 397
    sget-object v0, Lcom/aide/ui/U;->v5:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 399
    sget-object v1, Lcom/aide/ui/U;->v5:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 401
    :cond_e
    sget-object v0, Lcom/aide/ui/U;->v5:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static j6(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 7

    .line 407
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, p1, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object p0

    .line 408
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 409
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 410
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/aide/ui/T;

    invoke-direct {v0, p2, p0, p3}, Lcom/aide/ui/T;-><init>(Ljava/lang/Runnable;Landroid/app/ProgressDialog;Ljava/lang/Runnable;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static j6(Landroid/content/Context;)V
    .registers 4

    .line 416
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 417
    sget v1, Lcom/aide/ui/U;->DW:I

    if-ne v1, v0, :cond_1a

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App.init() with same pid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    goto :goto_2d

    .line 420
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "App.init() with new pid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 421
    sput v0, Lcom/aide/ui/U;->DW:I

    .line 423
    :goto_2d
    sput-object p0, Lcom/aide/ui/U;->VH:Landroid/content/Context;

    .line 424
    invoke-static {p0}, Labcd/FileSystemUtils;->setContext(Landroid/content/Context;)V

    .line 425
    sget-boolean p0, Lcom/aide/ui/U;->tp:Z

    if-eqz p0, :cond_3b

    .line 426
    const-string p0, "Using x86 binaries"

    invoke-static {p0}, Lcom/aide/common/AIDELog;->d(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static j6(Lcom/aide/ui/MainActivity;Ljava/lang/String;)V
    .registers 2

    .line 433
    sput-object p0, Lcom/aide/ui/U;->Hw:Lcom/aide/ui/MainActivity;

    .line 434
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sput-object p0, Lcom/aide/ui/U;->Zo:Landroid/os/Handler;

    .line 435
    invoke-static {p1}, Lcom/aide/ui/U;->DW(Ljava/lang/String;)V

    .line 436
    sget-object p0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    iget-object p0, p0, Lcom/aide/ui/U;->J0:Labcd/Xj;

    invoke-virtual {p0}, Labcd/Xj;->j6()V

    return-void
.end method

.method public static j6(Ljava/lang/String;)V
    .registers 3

    .line 117
    const-string v0, ".exp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 120
    :cond_13
    sput-object p0, Lcom/aide/ui/U;->j6:Ljava/lang/String;

    return-void
.end method

.method public static j6(Z)V
    .registers 4

    .line 442
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TrainerMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 443
    const-string v1, "Mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 444
    const-string v1, "ModeDecided"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 445
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 446
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/aide/ui/U;->gn:Ljava/lang/Boolean;

    return-void
.end method

.method public static j6(Ljava/lang/Runnable;)Z
    .registers 3

    .line 452
    sget-object v0, Lcom/aide/ui/U;->Zo:Landroid/os/Handler;

    new-instance v1, Lcom/aide/ui/Q;

    invoke-direct {v1, p0}, Lcom/aide/ui/Q;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static lg()Lcom/aide/ui/MainActivity;
    .registers 1

    .line 458
    sget-object v0, Lcom/aide/ui/U;->Hw:Lcom/aide/ui/MainActivity;

    return-object v0
.end method

.method public static nw()Labcd/ul;
    .registers 1

    .line 464
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->lg:Labcd/ul;

    return-object v0
.end method

.method public static rN()Labcd/Jk;
    .registers 1

    .line 470
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->ef:Labcd/Jk;

    return-object v0
.end method

.method public static ro()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static sG()Z
    .registers 3

    .line 483
    invoke-static {}, Lcom/aide/ui/U;->dx()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 484
    invoke-static {}, Lcom/aide/ui/U;->Zo()Landroid/content/Context;

    move-result-object v0

    const-string v1, "TrainerMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ModeDecided"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    return v2

    :cond_1a
    const/4 v0, 0x1

    return v0
.end method

.method public static sh()Z
    .registers 1

    .line 494
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static tp()Labcd/Ji;
    .registers 1

    .line 500
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->vy:Labcd/Ji;

    return-object v0
.end method

.method public static u7()Labcd/Kj;
    .registers 1

    .line 506
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->ei:Labcd/Kj;

    return-object v0
.end method

.method public static v5()Lcom/aide/ui/build/d;
    .registers 1

    .line 512
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->QX:Lcom/aide/ui/build/d;

    return-object v0
.end method

.method private static vJ()Lcom/aide/ui/U;
    .registers 1

    .line 519
    sget-object v0, Lcom/aide/ui/U;->FH:Lcom/aide/ui/U;

    return-object v0
.end method

.method public static vy()Labcd/Zk;
    .registers 1

    .line 525
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->XL:Labcd/Zk;

    return-object v0
.end method

.method public static we()Labcd/ck;
    .registers 1

    .line 531
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->J8:Labcd/ck;

    return-object v0
.end method

.method public static yS()Labcd/Pk;
    .registers 1

    .line 537
    invoke-static {}, Lcom/aide/ui/U;->vJ()Lcom/aide/ui/U;

    move-result-object v0

    iget-object v0, v0, Lcom/aide/ui/U;->cn:Labcd/Pk;

    return-object v0
.end method
