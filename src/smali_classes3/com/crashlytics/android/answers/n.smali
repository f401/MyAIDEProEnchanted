.class Lcom/crashlytics/android/answers/n;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/yz;


# instance fields
.field private final DW:Lcom/crashlytics/android/answers/A;

.field private final j6:Lcom/crashlytics/android/answers/E;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/E;Lcom/crashlytics/android/answers/A;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/crashlytics/android/answers/n;->j6:Lcom/crashlytics/android/answers/E;

    iput-object p2, p0, Lcom/crashlytics/android/answers/n;->DW:Lcom/crashlytics/android/answers/A;

    return-void
.end method

.method public static j6(Lcom/crashlytics/android/answers/E;)Lcom/crashlytics/android/answers/n;
    .registers 9

    new-instance v0, Lcom/crashlytics/android/answers/n;

    new-instance v1, Lcom/crashlytics/android/answers/A;

    new-instance v2, Labcd/rz;

    new-instance v3, Lcom/crashlytics/android/answers/z;

    new-instance v4, Labcd/pz;

    const-wide/16 v5, 0x3e8

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Labcd/pz;-><init>(JI)V

    const-wide v5, 0x3fb999999999999aL  # 0.1

    invoke-direct {v3, v4, v5, v6}, Lcom/crashlytics/android/answers/z;-><init>(Labcd/nz;D)V

    new-instance v4, Labcd/oz;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Labcd/oz;-><init>(I)V

    invoke-direct {v2, v3, v4}, Labcd/rz;-><init>(Labcd/nz;Labcd/qz;)V

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/A;-><init>(Labcd/rz;)V

    invoke-direct {v0, p0, v1}, Lcom/crashlytics/android/answers/n;-><init>(Lcom/crashlytics/android/answers/E;Lcom/crashlytics/android/answers/A;)V

    return-object v0
.end method


# virtual methods
.method public j6(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/crashlytics/android/answers/n;->DW:Lcom/crashlytics/android/answers/A;

    invoke-virtual {v2, v0, v1}, Lcom/crashlytics/android/answers/A;->j6(J)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/crashlytics/android/answers/n;->j6:Lcom/crashlytics/android/answers/E;

    invoke-virtual {v2, p1}, Lcom/crashlytics/android/answers/E;->j6(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/crashlytics/android/answers/n;->DW:Lcom/crashlytics/android/answers/A;

    invoke-virtual {p1}, Lcom/crashlytics/android/answers/A;->j6()V

    const/4 p1, 0x1

    return p1

    :cond_1b
    iget-object p1, p0, Lcom/crashlytics/android/answers/n;->DW:Lcom/crashlytics/android/answers/A;

    invoke-virtual {p1, v0, v1}, Lcom/crashlytics/android/answers/A;->DW(J)V

    :cond_20
    const/4 p1, 0x0

    return p1
.end method
