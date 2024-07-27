.class Lcom/crashlytics/android/answers/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/answers/t;


# static fields
.field static final j6:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/crashlytics/android/answers/C;->j6:Ljava/util/Set;

    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->FH:Lcom/crashlytics/android/answers/I$b;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/crashlytics/android/answers/I;->j6:Lcom/crashlytics/android/answers/J;

    iget-object v0, v0, Lcom/crashlytics/android/answers/J;->v5:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p1, Lcom/crashlytics/android/answers/I;->j6:Lcom/crashlytics/android/answers/J;

    iget-object v3, v3, Lcom/crashlytics/android/answers/J;->FH:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/crashlytics/android/answers/C;->DW:I

    rem-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
