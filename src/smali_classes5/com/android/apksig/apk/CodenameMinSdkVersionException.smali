.class public Lcom/android/apksig/apk/CodenameMinSdkVersionException;
.super Lcom/android/apksig/apk/MinSdkVersionException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCodename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/apksig/apk/MinSdkVersionException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/apksig/apk/CodenameMinSdkVersionException;->mCodename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCodename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/apksig/apk/CodenameMinSdkVersionException;->mCodename:Ljava/lang/String;

    return-object v0
.end method
