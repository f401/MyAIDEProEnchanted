.class public Ljavax/annotation/processing/Completions;
.super Ljava/lang/Object;
.source "Completions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/annotation/processing/Completions$SimpleCompletion;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/String;)Ljavax/annotation/processing/Completion;
    .registers 3

    .line 85
    new-instance v0, Ljavax/annotation/processing/Completions$SimpleCompletion;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Ljavax/annotation/processing/Completions$SimpleCompletion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Ljavax/annotation/processing/Completion;
    .registers 3

    .line 75
    new-instance v0, Ljavax/annotation/processing/Completions$SimpleCompletion;

    invoke-direct {v0, p0, p1}, Ljavax/annotation/processing/Completions$SimpleCompletion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
