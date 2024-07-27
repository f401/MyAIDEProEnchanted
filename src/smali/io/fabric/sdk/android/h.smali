.class public interface abstract Lio/fabric/sdk/android/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final j6:Lio/fabric/sdk/android/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/fabric/sdk/android/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/fabric/sdk/android/h$a;-><init>(Lio/fabric/sdk/android/g;)V

    sput-object v0, Lio/fabric/sdk/android/h;->j6:Lio/fabric/sdk/android/h;

    return-void
.end method


# virtual methods
.method public abstract j6(Ljava/lang/Exception;)V
.end method

.method public abstract j6(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
