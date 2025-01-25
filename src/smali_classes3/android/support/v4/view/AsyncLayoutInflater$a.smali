.class Landroid/support/v4/view/AsyncLayoutInflater$a;
.super Landroid/view/LayoutInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final j6:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.app."

    aput-object v2, v0, v1

    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$a;->j6:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .registers 3

    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$a;

    invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater$a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 7

    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$a;->j6:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_13

    aget-object v3, v0, v2

    :try_start_8
    invoke-virtual {p0, p1, v3, p2}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_c} :catch_f

    if-eqz v3, :cond_10

    return-object v3

    :catch_f
    move-exception v3

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_13
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
