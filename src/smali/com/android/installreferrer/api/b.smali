.class public abstract Lcom/android/installreferrer/api/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static j6(Landroid/content/Context;)Lcom/android/installreferrer/api/b$a;
    .registers 3

    new-instance v0, Lcom/android/installreferrer/api/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/installreferrer/api/b$a;-><init>(Landroid/content/Context;Lcom/android/installreferrer/api/a;)V

    return-object v0
.end method


# virtual methods
.method public abstract DW()Lcom/android/installreferrer/api/e;
.end method

.method public abstract j6()V
.end method

.method public abstract j6(Lcom/android/installreferrer/api/d;)V
.end method
