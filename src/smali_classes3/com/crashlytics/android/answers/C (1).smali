.class Lcom/crashlytics/android/answers/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/answers/t;


# static fields
.field static final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/crashlytics/android/answers/I$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final DW:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/crashlytics/android/answers/B;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/B;-><init>()V

    sput-object v0, Lcom/crashlytics/android/answers/C;->j6:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/crashlytics/android/answers/C;->DW:I

    return-void
.end method


# virtual methods
.method public j6(Lcom/crashlytics/android/answers/I;)Z
    .registers 6

    sget-object v0, Lcom/crashlytics/android/answers/C;->j6:Ljava/util/Set;

    iget-object v1, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->j6:Lcom/crashlytics/android/answers/J;

    iget-object v0, v0, Lcom/crashlytics/android/answers/J;->v5:Ljava/lang/String;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    iget-object p1, p1, Lcom/crashlytics/android/answers/I;->j6:Lcom/crashlytics/android/answers/J;

    iget-object p1, p1, Lcom/crashlytics/android/answers/J;->FH:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iget v3, p0, Lcom/crashlytics/android/answers/C;->DW:I

    rem-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-eqz p1, :cond_28

    const/4 p1, 0x1

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    return v1
.end method
