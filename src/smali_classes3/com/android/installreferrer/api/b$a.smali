.class public final Lcom/android/installreferrer/api/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final j6:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/installreferrer/api/b$a;->j6:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/installreferrer/api/a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/installreferrer/api/b$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public j6()Lcom/android/installreferrer/api/b;
    .registers 3

    iget-object v0, p0, Lcom/android/installreferrer/api/b$a;->j6:Landroid/content/Context;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/android/installreferrer/api/InstallReferrerClientImpl;

    invoke-direct {v1, v0}, Lcom/android/installreferrer/api/InstallReferrerClientImpl;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
