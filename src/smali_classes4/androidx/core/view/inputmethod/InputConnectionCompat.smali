.class public final Landroidx/core/view/inputmethod/InputConnectionCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
    }
.end annotation


# static fields
.field private static final COMMIT_CONTENT_ACTION:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_CONTENT_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_CONTENT_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

.field private static final COMMIT_CONTENT_DESCRIPTION_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_DESCRIPTION_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

.field private static final COMMIT_CONTENT_FLAGS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_FLAGS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

.field private static final COMMIT_CONTENT_INTEROP_ACTION:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

.field private static final COMMIT_CONTENT_LINK_URI_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_LINK_URI_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

.field private static final COMMIT_CONTENT_OPTS_INTEROP_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_OPTS_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

.field private static final COMMIT_CONTENT_RESULT_INTEROP_RECEIVER_KEY:Ljava/lang/String; = "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field private static final COMMIT_CONTENT_RESULT_RECEIVER_KEY:Ljava/lang/String; = "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

.field public static final INPUT_CONTENT_GRANT_READ_URI_PERMISSION:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitContent(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .registers 12

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    :goto_c
    if-ge v2, v5, :cond_1d

    aget-object v6, v4, v2

    invoke-virtual {v3, v6}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v2, v1

    :goto_17
    if-nez v2, :cond_1f

    :cond_19
    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1d
    move v2, v0

    goto :goto_17

    :cond_1f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-lt v2, v3, :cond_30

    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    invoke-interface {p0, v0, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_19

    :cond_30
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getProtocol(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7a

    const/4 v1, 0x3

    if-eq v2, v1, :cond_3d

    const/4 v1, 0x4

    if-ne v2, v1, :cond_19

    :cond_3d
    :goto_3d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_7c

    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    :goto_46
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_7f

    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    :goto_51
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_82

    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    :goto_5c
    invoke-virtual {p2}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_85

    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    :goto_67
    invoke-virtual {v2, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v0, :cond_88

    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    :goto_6e
    invoke-virtual {v2, v1, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v0, :cond_8b

    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    :goto_75
    invoke-interface {p0, v0, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_19

    :cond_7a
    move v0, v1

    goto :goto_3d

    :cond_7c
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_46

    :cond_7f
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_51

    :cond_82
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_5c

    :cond_85
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_67

    :cond_88
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_6e

    :cond_8b
    const-string v0, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    goto :goto_75
.end method

.method public static createWrapper(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Landroid/view/inputmethod/InputConnection;
    .registers 6

    const/4 v2, 0x0

    if-eqz p0, :cond_32

    if-eqz p1, :cond_2a

    if-eqz p2, :cond_22

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_14

    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$1;

    invoke-direct {v0, p0, v2, p2}, Landroidx/core/view/inputmethod/InputConnectionCompat$1;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v0

    :cond_13
    :goto_13
    return-object p0

    :cond_14
    invoke-static {p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->getContentMimeTypes(Landroid/view/inputmethod/EditorInfo;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_13

    new-instance v0, Landroidx/core/view/inputmethod/InputConnectionCompat$2;

    invoke-direct {v0, p0, v2, p2}, Landroidx/core/view/inputmethod/InputConnectionCompat$2;-><init>(Landroid/view/inputmethod/InputConnection;ZLandroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)V

    move-object p0, v0

    goto :goto_13

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onCommitContentListener must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "editorInfo must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputConnection must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static handlePerformPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;)Z
    .registers 12

    const/4 v6, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_6

    move v0, v5

    :goto_5
    return v0

    :cond_6
    const-string v0, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5e

    move v7, v5

    :goto_f
    if-eqz v7, :cond_69

    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    :goto_13
    :try_start_13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_83

    if-eqz v7, :cond_6c

    const-string v1, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    :goto_1d
    :try_start_1d
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_7b

    if-eqz v7, :cond_6f

    const-string v2, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    :goto_27
    :try_start_27
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ClipDescription;
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_7b

    if-eqz v7, :cond_72

    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    :goto_31
    :try_start_31
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_7b

    if-eqz v7, :cond_75

    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    :goto_3b
    :try_start_3b
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_7b

    move-result v8

    if-eqz v7, :cond_78

    const-string v4, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    :goto_43
    :try_start_43
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    if-eqz v1, :cond_8a

    if-eqz v2, :cond_8a

    new-instance v7, Landroidx/core/view/inputmethod/InputContentInfoCompat;

    invoke-direct {v7, v1, v2, v3}, Landroidx/core/view/inputmethod/InputContentInfoCompat;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    invoke-interface {p2, v7, v8, v4}, Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;->onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    :try_end_55
    .catchall {:try_start_43 .. :try_end_55} :catchall_7b

    move-result v5

    move v1, v5

    :goto_57
    if-eqz v0, :cond_5c

    invoke-virtual {v0, v1, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_5c
    move v0, v1

    goto :goto_5

    :cond_5e
    const-string v0, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_87

    const/4 v0, 0x1

    move v7, v0

    goto :goto_f

    :cond_69
    const-string v0, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    goto :goto_13

    :cond_6c
    const-string v1, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    goto :goto_1d

    :cond_6f
    const-string v2, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    goto :goto_27

    :cond_72
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    goto :goto_31

    :cond_75
    const-string v4, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    goto :goto_3b

    :cond_78
    const-string v4, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    goto :goto_43

    :catchall_7b
    move-exception v1

    move-object v2, v0

    :goto_7d
    if-eqz v2, :cond_82

    invoke-virtual {v2, v5, v6}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_82
    throw v1

    :catchall_83
    move-exception v0

    move-object v2, v6

    move-object v1, v0

    goto :goto_7d

    :cond_87
    move v0, v5

    goto/16 :goto_5

    :cond_8a
    move v1, v5

    goto :goto_57
.end method
